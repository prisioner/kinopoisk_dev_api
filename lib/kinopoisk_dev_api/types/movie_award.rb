# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class MovieAward < Base
      attribute? :nomination, Nomination
      attribute? :winning, Types::Bool
      attribute? :updatedAt, Types::String
      attribute? :createdAt, Types::String
      attribute? :movieId, Types::Float | Types::Integer
    end
  end
end
