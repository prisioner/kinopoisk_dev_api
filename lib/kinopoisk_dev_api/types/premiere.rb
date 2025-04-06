# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Premiere < Base
      attribute? :country, Types::String
      attribute? :world, Types::String
      attribute? :russia, Types::String
      attribute? :digital, Types::String
      attribute? :cinema, Types::String
      attribute? :bluray, Types::String
      attribute? :dvd, Types::String
    end
  end
end
