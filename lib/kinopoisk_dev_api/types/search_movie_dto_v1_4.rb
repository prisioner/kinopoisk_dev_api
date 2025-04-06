# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class SearchMovieDtoV1_4 < Base
      attribute? :id, Types::Float | Types::Integer
      attribute? :name, Types::Coercible::String.optional
      attribute? :alternativeName, Types::Coercible::String.optional
      attribute? :enName, Types::Coercible::String.optional
      attribute? :type, Types::Coercible::String.optional
      attribute? :year, Types::Float | Types::Integer.optional
      attribute? :description, Types::Coercible::String.optional
      attribute? :shortDescription, Types::Coercible::String.optional
      attribute? :movieLength, Types::Float | Types::Integer.optional
      attribute? :names, Types::Array.of(Name).optional
      attribute? :externalId, ExternalId.optional
      attribute? :logo, Logo.optional
      attribute? :poster, ShortImage.optional
      attribute? :backdrop, ShortImage.optional
      attribute? :rating, Rating.optional
      attribute? :votes, Votes.optional
      attribute? :genres, Types::Array.of(ItemName).optional
      attribute? :countries, Types::Array.of(ItemName).optional
      attribute? :releaseYears, Types::Array.of(YearRange).optional
      attribute? :isSeries, Types::Bool.optional
      attribute? :ticketsOnSale, Types::Bool.optional
      attribute? :totalSeriesLength, Types::Float | Types::Integer.optional
      attribute? :seriesLength, Types::Float | Types::Integer.optional
      attribute? :ratingMpaa, Types::Coercible::String.optional
      attribute? :ageRating, Types::Float | Types::Integer.optional
      attribute? :top10, Types::Float | Types::Integer.optional
      attribute? :top250, Types::Float | Types::Integer.optional
      attribute? :typeNumber, Types::Float | Types::Integer.optional
      attribute? :status, Types::Coercible::String.optional
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
