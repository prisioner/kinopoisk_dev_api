# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Image < Base
      attribute :movieId, Types::Float | Types::Integer
      attribute? :type, Types::Coercible::String
      attribute? :language, Types::Coercible::String
      attribute? :url, Types::Coercible::String
      attribute? :previewUrl, Types::Coercible::String
      attribute? :height, Types::Float | Types::Integer
      attribute? :width, Types::Float | Types::Integer
      attribute :updatedAt, Types::Coercible::String
      attribute :createdAt, Types::Coercible::String
    end
  end
end
