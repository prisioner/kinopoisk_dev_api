# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class List < Base
      attribute? :category, Types::Coercible::String.optional
      attribute? :slug, Types::Coercible::String.optional
      attribute? :moviesCount, Types::Float | Types::Integer.optional
      attribute? :cover, ShortImage.optional
      attribute? :name, Types::Coercible::String
      attribute? :updatedAt, Types::Coercible::String
      attribute? :createdAt, Types::Coercible::String
      alias movies_count moviesCount
      alias updated_at updatedAt
      alias created_at createdAt
    end
  end
end
