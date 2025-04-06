# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class CurrencyValue < Base
      attribute? :value, Types::Float | Types::Integer.optional
      attribute? :currency, Types::Coercible::String.optional
    end
  end
end
