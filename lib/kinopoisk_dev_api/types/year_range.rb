# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class YearRange < Base
      attribute? :start, Types::Float | Types::Integer
      attribute? :end, Types::Float | Types::Integer
    end
  end
end
