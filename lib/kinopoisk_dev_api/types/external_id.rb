# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class ExternalId < Base
      attribute? :kpHD, Types::String
      attribute? :imdb, Types::String
      attribute? :tmdb, Types::Float
    end
  end
end
