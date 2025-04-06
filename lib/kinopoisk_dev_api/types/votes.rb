# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Votes < Base
      attribute? :kp, Types::String
      attribute? :imdb, Types::Float
      attribute? :tmdb, Types::Float
      attribute? :filmCritics, Types::Float
      attribute? :russianFilmCritics, Types::Float
      attribute? :await, Types::Float
    end
  end
end
