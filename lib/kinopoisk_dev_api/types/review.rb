# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Review < Base
      attribute :id, Types::Float
      attribute :movieId, Types::Float
      attribute? :title, Types::String
      attribute? :type, Types::String
      attribute? :review, Types::String
      attribute? :date, Types::String
      attribute? :author, Types::String
      attribute? :userRating, Types::Float
      attribute :authorId, Types::Float
      attribute :reviewLikes, Types::Float
      attribute :reviewDislikes, Types::Float
      attribute :updatedAt, Types::String
      attribute :createdAt, Types::String
    end
  end
end
