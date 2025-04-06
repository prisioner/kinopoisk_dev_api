# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class EpisodeV1_4 < Base
      attribute? :number, Types::Float | Types::Integer
      attribute? :name, Types::String
      attribute? :enName, Types::String
      attribute? :date, Types::String
      attribute? :description, Types::String
      attribute? :still, ShortImage
      attribute? :airDate, Types::String
      attribute? :enDescription, Types::String
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
