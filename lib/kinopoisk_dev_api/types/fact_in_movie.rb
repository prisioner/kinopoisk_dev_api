# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class FactInMovie < Base
      attribute :value, Types::Coercible::String
      attribute? :type, Types::Coercible::String.optional
      attribute? :spoiler, Types::Bool.optional
    end
  end
end
