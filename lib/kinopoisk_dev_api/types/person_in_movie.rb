# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class PersonInMovie < Base
      attribute :id, Types::Float | Types::Integer
      attribute? :photo, Types::String
      attribute? :name, Types::String
      attribute? :enName, Types::String
      attribute? :description, Types::String
      attribute? :profession, Types::String
      attribute? :enProfession, Types::String
    end
  end
end
