# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Movie < Base
      attribute :id, Types::Float
      attribute? :name, Types::String
      attribute? :rating, Types::Float
    end
  end
end
