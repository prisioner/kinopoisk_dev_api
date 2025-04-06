# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class EpisodeV1_4 < Base
      attribute? :number, Types::Float | Types::Integer
      attribute? :name, Types::Coercible::String
      attribute? :enName, Types::Coercible::String
      attribute? :date, Types::Coercible::String
      attribute? :description, Types::Coercible::String
      attribute? :still, ShortImage
      attribute? :airDate, Types::Coercible::String
      attribute? :enDescription, Types::Coercible::String
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
