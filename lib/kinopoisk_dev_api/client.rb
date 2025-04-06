# frozen_string_literal: true

module KinopoiskDevApi
  class Client
    attr_reader :api_key, :url

    API_VERSION = 'v1.4'

    def initialize(api_key, url: 'https://api.kinopoisk.dev')
      @api_key = api_key
      @url = url
    end

    def connection
      @connection ||= Faraday.new(url: url, headers: {'X-API-KEY' => api_key}) do |faraday|
        faraday.response :logger
        faraday.adapter KinopoiskDevApi.configuration.adapter
        faraday.options.timeout = KinopoiskDevApi.configuration.connection_timeout
        faraday.options.open_timeout = KinopoiskDevApi.configuration.connection_open_timeout
        faraday.options.params_encoder = Faraday::FlatParamsEncoder
      end
    end

    def method_missing(method_name, *args, &block)
      return super unless ENDPOINTS.key?(method_name)

      endpoint = ENDPOINTS[method_name]

      result = call(endpoint, *args)

      endpoint_type(endpoint).call(result)
    end

    def respond_to_missing?(*args)
      method_name = args[0]

      ENDPOINTS.key?(method_name) || super
    end

    def call(endpoint, raw_params = {})
      params = build_params(raw_params)
      path = build_path(endpoint, params)
      response = connection.get(path, params)
      raise Exceptions::ResponseError.new(response: response) unless response.status == 200

      JSON.parse(response.body)
    end

    private

    def endpoint_type(endpoint)
      response_type = endpoint[:response_type]
      return response_type unless response_type.is_a?(String)

      version = (endpoint[:version] || API_VERSION).tr('.', '_').upcase
      KinopoiskDevApi.const_get(response_type.sub('<VERSION>', version))
    end

    def build_params(raw_params)
      params = raw_params.dup

      params.transform_keys! do |key|
        words = key.to_s.split('_')
        words.drop(1).map(&:camelize!)
        words.join
      end

      params.transform_values! { |value| transform_value(value) }

      params
    end

    def build_path(endpoint, params)
      version = endpoint[:version] || API_VERSION
      path = (+"/").concat(version, endpoint[:path])

      path.gsub(/:(\w+)/) do |path_param|
        params.key?($1) ? params.delete($1) : path_param
      end
    end

    def transform_value(raw_value)
      case raw_value
      when Array
        raw_value.map { |e| transform_value(e) }
      when String
        raw_value = raw_value.sub('!', '%21') if raw_value.start_with?('!')
        raw_value = raw_value.sub('+', '%2B') if raw_value.start_with?('+')
        raw_value
      when Date, Time, DateTime
        raw_value.strftime('%d.%m.%Y')
      when TrueClass, FalseClass
        raw_value ? 'true' : 'false'
      when Range
        transform_value([raw_value.start, raw_value.end]).join('-')
      else
        raw_value.to_s
      end
    end
  end
end
