# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class SeasonInfo < Base
      attribute? :number, Types::Float
      attribute? :episodesCount, Types::Float
    end
  end
end
