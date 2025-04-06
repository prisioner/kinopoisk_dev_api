# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Keyword < Base
      attribute :id, Types::Float | Types::Integer
      attribute? :title, Types::String
      attribute? :movies, MovieFromKeyword
      attribute :updatedAt, Types::String
      attribute :createdAt, Types::String
    end
  end
end
