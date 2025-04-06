# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class MeiliPersonEntityV1_4 < Base
      attribute :id, Types::Float | Types::Integer
      attribute? :name, Types::String
      attribute? :enName, Types::String
      attribute? :photo, Types::String
      attribute? :sex, Types::String
      attribute? :growth, Types::Float | Types::Integer
      attribute? :birthday, Types::String
      attribute? :death, Types::String
      attribute? :age, Types::Float | Types::Integer
      attribute? :birthPlace, Types::Array.of(BirthPlace)
      attribute? :deathPlace, Types::Array.of(DeathPlace)
      attribute? :profession, Types::Array.of(Profession)
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
