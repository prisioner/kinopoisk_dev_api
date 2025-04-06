# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Video < Base
      attribute? :url, Types::String
      attribute? :name, Types::String
      attribute? :site, Types::String
      attribute? :size, Types::Float
      attribute? :type, Types::String
    end
  end
end
