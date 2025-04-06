# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Spouses < Base
      attribute? :id, Types::Float | Types::Integer
      attribute? :name, Types::Coercible::String
      attribute? :divorced, Types::Bool
      attribute? :divorcedReason, Types::Coercible::String
      attribute? :sex, Types::Coercible::String
      attribute? :children, Types::Float | Types::Integer
      attribute? :relation, Types::Coercible::String
    end
  end
end
