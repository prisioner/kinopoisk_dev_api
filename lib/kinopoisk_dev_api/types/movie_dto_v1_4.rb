# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class MovieDtoV1_4 < Base
      attribute? :id, Types::Float | Types::Integer.optional
      attribute? :externalId, ExternalId.optional
      attribute? :name, Types::Coercible::String.optional
      attribute? :alternativeName, Types::Coercible::String.optional
      attribute? :enName, Types::Coercible::String.optional
      attribute? :names, Types::Array.of(Name).optional
      attribute? :type, Types::Coercible::String.optional
      attribute? :typeNumber, Types::Float | Types::Integer.optional
      attribute? :year, Types::Float | Types::Integer.optional
      attribute? :description, Types::Coercible::String.optional
      attribute? :shortDescription, Types::Coercible::String.optional
      attribute? :slogan, Types::Coercible::String.optional
      attribute? :status, Types::Coercible::String.optional
      attribute? :facts, Types::Array.of(FactInMovie).optional
      attribute? :rating, Rating
      attribute? :votes, Votes
      attribute? :movieLength, Types::Float | Types::Integer.optional
      attribute? :ratingMpaa, Types::Coercible::String.optional
      attribute? :ageRating, Types::Float | Types::Integer.optional
      attribute? :logo, Logo
      attribute? :poster, ShortImage
      attribute? :backdrop, ShortImage
      attribute? :videos, VideoTypes
      attribute? :genres, Types::Array.of(ItemName)
      attribute? :countries, Types::Array.of(ItemName)
      attribute? :persons, Types::Array.of(PersonInMovie)
      attribute? :reviewInfo, ReviewInfo
      attribute? :seasonsInfo, Types::Array.of(SeasonInfo)
      attribute? :budget, CurrencyValue
      attribute? :fees, Fees
      attribute? :premiere, Premiere
      attribute? :similarMovies, Types::Array.of(LinkedMovieV1_4).optional
      attribute? :sequelsAndPrequels, Types::Array.of(LinkedMovieV1_4).optional
      attribute? :watchability, Watchability
      attribute? :releaseYears, Types::Array.of(YearRange)
      attribute? :top10, Types::Float | Types::Integer.optional
      attribute? :top250, Types::Float | Types::Integer.optional
      attribute? :ticketsOnSale, Types::Bool.optional
      attribute? :totalSeriesLength, Types::Float | Types::Integer.optional
      attribute? :seriesLength, Types::Float | Types::Integer.optional
      attribute? :isSeries, Types::Bool.optional
      attribute? :audience, Types::Array.of(Audience).optional
      attribute? :lists, Types::Array.of(Types::Coercible::String).optional
      attribute? :networks, NetworksV1_4.optional
      attribute? :updatedAt, Types::Coercible::String.optional
      attribute? :createdAt, Types::Coercible::String.optional
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
