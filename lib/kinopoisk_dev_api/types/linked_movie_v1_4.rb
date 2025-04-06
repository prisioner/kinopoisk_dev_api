# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class LinkedMovieV1_4 < Base
      attribute? :id, Types::Float | Types::Integer
      attribute? :name, Types::Coercible::String.optional
      attribute? :enName, Types::Coercible::String.optional
      attribute? :alternativeName, Types::Coercible::String.optional
      attribute? :type, Types::Coercible::String.optional
      attribute? :poster, ShortImage.optional
      attribute? :rating, Rating.optional
      attribute? :year, Types::Float | Types::Integer.optional
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
