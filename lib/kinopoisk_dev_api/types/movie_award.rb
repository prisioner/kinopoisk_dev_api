# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class MovieAward < Base
      attribute? :nomination, Nomination.optional
      attribute? :winning, Types::Bool.optional
      attribute? :updatedAt, Types::Coercible::String.optional
      attribute? :createdAt, Types::Coercible::String.optional
      attribute? :movieId, Types::Float | Types::Integer.optional
      alias updated_at updatedAt
      alias created_at createdAt
      alias movie_id movieId
    end
  end
end
