# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class PersonAward < Base
      attribute? :nomination, Nomination
      attribute? :winning, Types::Bool
      attribute? :updatedAt, Types::String
      attribute? :createdAt, Types::String
      attribute :personId, Types::Float
      attribute? :movie, Movie
    end
  end
end
