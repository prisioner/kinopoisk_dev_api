# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class DeathPlace < Base
      attribute? :value, Types::Coercible::String
    end
  end
end
