# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class SearchMovieDtoV1_4 < Base
      attribute :id, Types::Float
      attribute? :name, Types::String
      attribute? :alternativeName, Types::String
      attribute? :enName, Types::String
      attribute? :type, Types::String
      attribute? :year, Types::Float
      attribute? :description, Types::String
      attribute? :shortDescription, Types::String
      attribute? :movieLength, Types::Float
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
      attribute? :totalSeriesLength, Types::Float
      attribute? :seriesLength, Types::Float
      attribute? :ratingMpaa, Types::String
      attribute? :ageRating, Types::Float
      attribute? :top10, Types::Float
      attribute? :top250, Types::Float
      attribute? :typeNumber, Types::Float
      attribute? :status, Types::String
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
