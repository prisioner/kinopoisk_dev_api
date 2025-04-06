# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class WatchabilityItem < Base
      attribute? :name, Types::Coercible::String.optional
      attribute :logo, Logo
      attribute :url, Types::Coercible::String
    end
  end
end
