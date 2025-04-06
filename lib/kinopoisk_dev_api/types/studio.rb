# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Studio < Base
      attribute? :id, Types::Coercible::String
      attribute? :subType, Types::Coercible::String.optional
      attribute? :title, Types::Coercible::String.optional
      attribute? :type, Types::Coercible::String
      attribute? :movies, Types::Array.of(MovieFromStudio)
      attribute? :updatedAt, Types::Coercible::String
      attribute? :createdAt, Types::Coercible::String
    end
  end
end
