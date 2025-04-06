# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class YearRange < Base
      attribute? :start, Types::Float
      attribute? :end, Types::Float
    end
  end
end
