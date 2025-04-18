# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class ItemName < Base
      attribute? :name, Types::Coercible::String
    end
  end
end
