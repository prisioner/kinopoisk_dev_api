# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class SeasonV1_4 < Base
      attribute :movieId, Types::Float
      attribute? :number, Types::Float
      attribute? :episodesCount, Types::Float
      attribute? :episodes, Types::Array.of(EpisodeV1_4)
      attribute? :poster, ShortImage
      attribute? :name, Types::String
      attribute? :enName, Types::String
      attribute? :duration, Types::Float
      attribute? :description, Types::String
      attribute? :enDescription, Types::String
      attribute? :airDate, Types::String
      attribute? :updatedAt, Types::String
      attribute? :createdAt, Types::String
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
