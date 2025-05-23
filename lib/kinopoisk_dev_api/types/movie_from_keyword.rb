# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class MovieFromKeyword < Base
      attribute? :id, Types::Float | Types::Integer
    end
  end
end
