# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Studio < Base
      attribute :id, Types::String
      attribute? :subType, Types::String
      attribute? :title, Types::String
      attribute? :type, Types::String
      attribute? :movies, MovieFromStudio
      attribute :updatedAt, Types::String
      attribute :createdAt, Types::String
    end
  end
end
