# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class ReviewInfo < Base
      attribute? :count, Types::Float | Types::Integer.optional
      attribute? :positiveCount, Types::Float | Types::Integer.optional
      attribute? :percentage, Types::Coercible::String.optional
    end
  end
end
