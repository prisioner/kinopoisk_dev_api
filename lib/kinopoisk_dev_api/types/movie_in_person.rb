# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class MovieInPerson < Base
      attribute :id, Types::Float | Types::Integer
      attribute? :name, Types::String
      attribute? :alternativeName, Types::String
      attribute? :rating, Types::Float | Types::Integer
      attribute? :general, Types::Bool
      attribute? :description, Types::String
      attribute? :enProfession, Types::String
    end
  end
end
