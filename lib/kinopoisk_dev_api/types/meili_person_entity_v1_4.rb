# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class MeiliPersonEntityV1_4 < Base
      attribute? :id, Types::Float | Types::Integer
      attribute? :name, Types::Coercible::String.optional
      attribute? :enName, Types::Coercible::String.optional
      attribute? :photo, Types::Coercible::String.optional
      attribute? :sex, Types::Coercible::String.optional
      attribute? :growth, Types::Float | Types::Integer.optional
      attribute? :birthday, Types::Coercible::String.optional
      attribute? :death, Types::Coercible::String.optional
      attribute? :age, Types::Float | Types::Integer.optional
      attribute? :birthPlace, Types::Array.of(BirthPlace)
      attribute? :deathPlace, Types::Array.of(DeathPlace)
      attribute? :profession, Types::Array.of(Profession)
      alias en_name enName
      alias birth_place birthPlace
      alias death_place deathPlace
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
