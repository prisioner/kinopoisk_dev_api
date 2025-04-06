# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class WatchabilityItem < Base
      attribute? :name, Types::String
      attribute :logo, Logo
      attribute :url, Types::String
    end
  end
end
