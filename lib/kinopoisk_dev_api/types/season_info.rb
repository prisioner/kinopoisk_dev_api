# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class SeasonInfo < Base
      attribute? :number, Types::Float | Types::Integer.optional
      attribute? :episodesCount, Types::Float | Types::Integer.optional
      alias episodes_count episodesCount
    end
  end
end
