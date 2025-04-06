# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Audience < Base
      attribute? :count, Types::Float
      attribute? :country, Types::String
    end
  end
end
