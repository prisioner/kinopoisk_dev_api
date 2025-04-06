# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class SeasonV1_4 < Base
      attribute? :movieId, Types::Float | Types::Integer
      attribute? :number, Types::Float | Types::Integer
      attribute? :episodesCount, Types::Float | Types::Integer
      attribute? :episodes, Types::Array.of(EpisodeV1_4)
      attribute? :poster, ShortImage
      attribute? :name, Types::Coercible::String
      attribute? :enName, Types::Coercible::String
      attribute? :duration, Types::Float | Types::Integer
      attribute? :description, Types::Coercible::String
      attribute? :enDescription, Types::Coercible::String
      attribute? :airDate, Types::Coercible::String
      attribute? :updatedAt, Types::Coercible::String.optional
      attribute? :createdAt, Types::Coercible::String.optional
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
