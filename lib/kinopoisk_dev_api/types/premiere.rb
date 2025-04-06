# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Premiere < Base
      attribute? :country, Types::Coercible::String.optional
      attribute? :world, Types::Coercible::String.optional
      attribute? :russia, Types::Coercible::String.optional
      attribute? :digital, Types::Coercible::String.optional
      attribute? :cinema, Types::Coercible::String.optional
      attribute? :bluray, Types::Coercible::String.optional
      attribute? :dvd, Types::Coercible::String.optional
    end
  end
end
