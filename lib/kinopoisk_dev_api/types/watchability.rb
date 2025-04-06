# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Watchability < Base
      attribute? :items, Types::Array.of(WatchabilityItem)
    end
  end
end
