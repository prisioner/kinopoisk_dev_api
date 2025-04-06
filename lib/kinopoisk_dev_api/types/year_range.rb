# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class YearRange < Base
      attribute? :start, Types::Float | Types::Integer.optional
      attribute? :end, Types::Float | Types::Integer.optional
    end
  end
end
