# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class ReviewInfo < Base
      attribute? :count, Types::Float
      attribute? :positiveCount, Types::Float
      attribute? :percentage, Types::String
    end
  end
end
