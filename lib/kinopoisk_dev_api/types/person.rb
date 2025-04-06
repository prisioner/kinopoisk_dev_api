# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Person < Base
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
      attribute? :spouses, Types::Array.of(Spouses)
      attribute? :countAwards, Types::Float | Types::Integer
      attribute? :profession, Types::Array.of(Profession)
      attribute? :facts, Types::Array.of(FactInPerson)
      attribute? :movies, Types::Array.of(MovieInPerson)
      attribute :updatedAt, Types::String
      attribute :createdAt, Types::String
    end
  end
end
