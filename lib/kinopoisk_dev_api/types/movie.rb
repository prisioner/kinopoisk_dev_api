# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Movie < Base
      attribute :id, Types::Float | Types::Integer
      attribute? :name, Types::String
      attribute? :rating, Types::Float | Types::Integer
    end
  end
end
