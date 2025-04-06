# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class CurrencyValue < Base
      attribute? :value, Types::Float | Types::Integer
      attribute? :currency, Types::String
    end
  end
end
