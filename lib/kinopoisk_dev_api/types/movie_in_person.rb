# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class MovieInPerson < Base
      attribute :id, Types::Float
      attribute? :name, Types::String
      attribute? :alternativeName, Types::String
      attribute? :rating, Types::Float
      attribute? :general, Types::Bool
      attribute? :description, Types::String
      attribute? :enProfession, Types::String
    end
  end
end
