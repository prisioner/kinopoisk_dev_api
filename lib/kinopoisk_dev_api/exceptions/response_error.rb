# frozen_string_literal: true

module KinopoiskDevApi
  module Exceptions
    class ResponseError < Base
      attr_reader :response

      def initialize(response:)
        @response = response

        super("Kinopoisk.dev API has returned the error. (#{data.map { |k, v| %(#{k}: #{v.inspect}) }.join(", ")})")
      end

      def error_code
        data[:statusCode] || data["statusCode"]
      end

      def error_type
        data[:error] || data["error"]
      end

      def error_message
        data[:message] || data["message"]
      end

      def data
        @data ||= begin
          JSON.parse(response.body)
        rescue JSON::ParserError
          { error_code: response.status, uri: response.env.url.to_s }
        end
      end
    end
  end
end
