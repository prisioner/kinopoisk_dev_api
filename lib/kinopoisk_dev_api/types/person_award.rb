# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class PersonAward < Base
      attribute? :nomination, Nomination.optional
      attribute? :winning, Types::Bool.optional
      attribute? :updatedAt, Types::Coercible::String.optional
      attribute? :createdAt, Types::Coercible::String.optional
      attribute :personId, Types::Float | Types::Integer
      attribute? :movie, Movie.optional
    end
  end
end
