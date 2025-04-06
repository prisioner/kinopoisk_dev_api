# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Rating < Base
      attribute? :kp, Types::Float | Types::Integer
      attribute? :imdb, Types::Float | Types::Integer
      attribute? :tmdb, Types::Float | Types::Integer
      attribute? :filmCritics, Types::Float | Types::Integer
      attribute? :russianFilmCritics, Types::Float | Types::Integer
      attribute? :await, Types::Float | Types::Integer
    end
  end
end
