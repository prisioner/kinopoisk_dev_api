# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Person < Base
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
      attribute? :spouses, Types::Array.of(Spouses)
      attribute? :countAwards, Types::Float | Types::Integer.optional
      attribute? :profession, Types::Array.of(Profession)
      attribute? :facts, Types::Array.of(FactInPerson)
      attribute? :movies, Types::Array.of(MovieInPerson)
      attribute? :updatedAt, Types::Coercible::String
      attribute? :createdAt, Types::Coercible::String
      alias en_name enName
      alias birth_place birthPlace
      alias death_place deathPlace
      alias count_awards countAwards
      alias updated_at updatedAt
      alias created_at createdAt
    end
  end
end
