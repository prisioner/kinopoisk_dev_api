# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class PossibleValueDto < Base
      attribute? :name, Types::String
      attribute? :slug, Types::String
    end
  end
end
