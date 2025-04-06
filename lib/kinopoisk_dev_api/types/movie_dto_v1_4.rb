# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class MovieDtoV1_4 < Base
      attribute? :id, Types::Float | Types::Integer
      attribute? :externalId, ExternalId
      attribute? :name, Types::String
      attribute? :alternativeName, Types::String
      attribute? :enName, Types::String
      attribute? :names, Types::Array.of(Name)
      attribute? :type, Types::String
      attribute? :typeNumber, Types::Float | Types::Integer
      attribute? :year, Types::Float | Types::Integer
      attribute? :description, Types::String
      attribute? :shortDescription, Types::String
      attribute? :slogan, Types::String
      attribute? :status, Types::String
      attribute? :facts, Types::Array.of(FactInMovie)
      attribute? :rating, Rating
      attribute? :votes, Votes
      attribute? :movieLength, Types::Float | Types::Integer
      attribute? :ratingMpaa, Types::String
      attribute? :ageRating, Types::Float | Types::Integer
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
      attribute? :similarMovies, Types::Array.of(LinkedMovieV1_4)
      attribute? :sequelsAndPrequels, Types::Array.of(LinkedMovieV1_4)
      attribute? :watchability, Watchability
      attribute? :releaseYears, Types::Array.of(YearRange)
      attribute? :top10, Types::Float | Types::Integer
      attribute? :top250, Types::Float | Types::Integer
      attribute? :ticketsOnSale, Types::Bool
      attribute? :totalSeriesLength, Types::Float | Types::Integer
      attribute? :seriesLength, Types::Float | Types::Integer
      attribute? :isSeries, Types::Bool
      attribute? :audience, Types::Array.of(Audience)
      attribute? :lists, Types::Array.of(Types::String)
      attribute? :networks, NetworksV1_4
      attribute? :updatedAt, Types::String
      attribute? :createdAt, Types::String
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
