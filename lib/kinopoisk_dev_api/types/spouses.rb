# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Spouses < Base
      attribute :id, Types::Float | Types::Integer
      attribute? :name, Types::String
      attribute? :divorced, Types::Bool
      attribute? :divorcedReason, Types::String
      attribute? :sex, Types::String
      attribute? :children, Types::Float | Types::Integer
      attribute? :relation, Types::String
    end
  end
end
