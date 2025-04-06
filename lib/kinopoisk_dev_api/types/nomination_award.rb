# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class NominationAward < Base
      attribute? :title, Types::Coercible::String.optional
      attribute? :year, Types::Float | Types::Integer.optional
    end
  end
end
