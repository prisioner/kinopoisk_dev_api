# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class NominationAward < Base
      attribute? :title, Types::String
      attribute? :year, Types::Float | Types::Integer
    end
  end
end
