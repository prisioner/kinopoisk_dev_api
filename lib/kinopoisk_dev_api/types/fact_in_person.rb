# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class FactInPerson < Base
      attribute? :value, Types::Coercible::String
    end
  end
end
