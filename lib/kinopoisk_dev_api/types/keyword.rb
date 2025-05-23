# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Keyword < Base
      attribute? :id, Types::Float | Types::Integer
      attribute? :title, Types::Coercible::String.optional
      attribute? :movies, Types::Array.of(MovieFromKeyword)
      attribute? :updatedAt, Types::Coercible::String
      attribute? :createdAt, Types::Coercible::String
      alias updated_at updatedAt
      alias created_at createdAt
    end
  end
end
