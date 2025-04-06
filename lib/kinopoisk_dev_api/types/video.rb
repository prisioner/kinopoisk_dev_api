# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Video < Base
      attribute? :url, Types::Coercible::String.optional
      attribute? :name, Types::Coercible::String.optional
      attribute? :site, Types::Coercible::String.optional
      attribute? :size, Types::Float | Types::Integer.optional
      attribute? :type, Types::Coercible::String.optional
    end
  end
end
