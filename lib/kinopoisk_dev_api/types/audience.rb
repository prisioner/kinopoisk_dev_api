# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Audience < Base
      attribute? :count, Types::Float | Types::Integer.optional
      attribute? :country, Types::Coercible::String.optional
    end
  end
end
