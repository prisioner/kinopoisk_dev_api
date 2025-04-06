# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class LinkedMovieV1_4 < Base
      attribute :id, Types::Float
      attribute? :name, Types::String
      attribute? :enName, Types::String
      attribute? :alternativeName, Types::String
      attribute? :type, Types::String
      attribute? :poster, Poster
      attribute? :rating, Rating
      attribute? :year, Types::Float
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
