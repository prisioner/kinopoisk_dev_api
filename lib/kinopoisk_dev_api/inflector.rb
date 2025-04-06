# frozen_string_literal: true

module KinopoiskDevApi
  class Inflector < Zeitwerk::GemInflector
    def camelize(basename, abspath)
      case basename
      when "endpoints"
        "ENDPOINTS"
      when /(.*)_(v\d+(?:_\d+)*)/
        super(::Regexp.last_match(1), abspath) + ::Regexp.last_match(2).upcase
      else
        super
      end
    end
  end
end
