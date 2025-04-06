# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class PossibleValueDto < Base
      attribute? :name, Types::Coercible::String.optional
      attribute? :slug, Types::Coercible::String.optional
    end
  end
end
