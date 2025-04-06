# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class List < Base
      attribute? :category, Types::String
      attribute? :slug, Types::String
      attribute? :moviesCount, Types::Float
      attribute? :cover, ShortImage
      attribute :name, Types::String
      attribute :updatedAt, Types::String
      attribute :createdAt, Types::String
    end
  end
end
