# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Rating < Base
      attribute? :kp, Types::Float | Types::Integer.optional
      attribute? :imdb, Types::Float | Types::Integer.optional
      attribute? :tmdb, Types::Float | Types::Integer.optional
      attribute? :filmCritics, Types::Float | Types::Integer.optional
      attribute? :russianFilmCritics, Types::Float | Types::Integer.optional
      attribute? :await, Types::Float | Types::Integer.optional
    end
  end
end
