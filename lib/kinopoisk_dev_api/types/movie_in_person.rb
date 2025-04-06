# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class MovieInPerson < Base
      attribute :id, Types::Float | Types::Integer
      attribute? :name, Types::Coercible::String.optional
      attribute? :alternativeName, Types::Coercible::String.optional
      attribute? :rating, Types::Float | Types::Integer.optional
      attribute? :general, Types::Bool.optional
      attribute? :description, Types::Coercible::String.optional
      attribute? :enProfession, Types::Coercible::String.optional
    end
  end
end
