# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class ShortImage < Base
      attribute? :url, Types::String
      attribute? :previewUrl, Types::String
    end
  end
end
