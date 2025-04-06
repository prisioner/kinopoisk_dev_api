# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class PersonInMovie < Base
      attribute? :id, Types::Float | Types::Integer
      attribute? :photo, Types::Coercible::String.optional
      attribute? :name, Types::Coercible::String.optional
      attribute? :enName, Types::Coercible::String.optional
      attribute? :description, Types::Coercible::String.optional
      attribute? :profession, Types::Coercible::String.optional
      attribute? :enProfession, Types::Coercible::String.optional
    end
  end
end
