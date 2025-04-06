# frozen_string_literal: true

module KinopoiskDevApi
  class Inflector < Zeitwerk::GemInflector
    def camelize(basename, abspath)
      case basename
      when 'endpoints'
        'ENDPOINTS'
      when /(.*)_(v\d+(?:_\d+)*)/
        super($1, abspath) + $2.upcase
      else
        super
      end
    end
  end
end
