# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class ExternalId < Base
      attribute? :kpHD, Types::Coercible::String.optional
      attribute? :imdb, Types::Coercible::String.optional
      attribute? :tmdb, Types::Float | Types::Integer.optional
    end
  end
end
