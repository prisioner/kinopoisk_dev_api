# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class ReviewInfo < Base
      attribute? :count, Types::Float | Types::Integer
      attribute? :positiveCount, Types::Float | Types::Integer
      attribute? :percentage, Types::String
    end
  end
end
