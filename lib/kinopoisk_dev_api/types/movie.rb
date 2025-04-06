# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Movie < Base
      attribute :id, Types::Float | Types::Integer
      attribute? :name, Types::Coercible::String.optional
      attribute? :rating, Types::Float | Types::Integer.optional
    end
  end
end
