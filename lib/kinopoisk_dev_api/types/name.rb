# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Name < Base
      attribute? :name, Types::Coercible::String
      attribute? :language, Types::Coercible::String.optional
      attribute? :type, Types::Coercible::String.optional
    end
  end
end
