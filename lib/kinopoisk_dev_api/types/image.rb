# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Image < Base
      attribute :movieId, Types::Float
      attribute? :type, Types::String
      attribute? :language, Types::String
      attribute? :url, Types::String
      attribute? :previewUrl, Types::String
      attribute? :height, Types::Float
      attribute? :width, Types::Float
      attribute :updatedAt, Types::String
      attribute :createdAt, Types::String
    end
  end
end
