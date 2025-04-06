# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Rating < Base
      attribute? :kp, Types::Float
      attribute? :imdb, Types::Float
      attribute? :tmdb, Types::Float
      attribute? :filmCritics, Types::Float
      attribute? :russianFilmCritics, Types::Float
      attribute? :await, Types::Float
    end
  end
end
