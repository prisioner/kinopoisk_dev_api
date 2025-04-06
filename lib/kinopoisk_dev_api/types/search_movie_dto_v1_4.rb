# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class SearchMovieDtoV1_4 < Base
      attribute :id, Types::Float | Types::Integer
      attribute? :name, Types::String
      attribute? :alternativeName, Types::String
      attribute? :enName, Types::String
      attribute? :type, Types::String
      attribute? :year, Types::Float | Types::Integer
      attribute? :description, Types::String
      attribute? :shortDescription, Types::String
      attribute? :movieLength, Types::Float | Types::Integer
      attribute? :names, Types::Array.of(Name)
      attribute? :externalId, ExternalId
      attribute? :logo, Logo
      attribute? :poster, ShortImage
      attribute? :backdrop, ShortImage
      attribute? :rating, Rating
      attribute? :votes, Votes
      attribute? :genres, Types::Array.of(ItemName)
      attribute? :countries, Types::Array.of(ItemName)
      attribute? :releaseYears, Types::Array.of(YearRange)
      attribute? :isSeries, Types::Bool
      attribute? :ticketsOnSale, Types::Bool
      attribute? :totalSeriesLength, Types::Float | Types::Integer
      attribute? :seriesLength, Types::Float | Types::Integer
      attribute? :ratingMpaa, Types::String
      attribute? :ageRating, Types::Float | Types::Integer
      attribute? :top10, Types::Float | Types::Integer
      attribute? :top250, Types::Float | Types::Integer
      attribute? :typeNumber, Types::Float | Types::Integer
      attribute? :status, Types::String
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
