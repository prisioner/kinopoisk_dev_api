# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class FactInMovie < Base
      attribute :value, Types::String
      attribute? :type, Types::String
      attribute? :spoiler, Types::Bool
    end
  end
end
