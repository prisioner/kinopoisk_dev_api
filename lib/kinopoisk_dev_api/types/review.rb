# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Review < Base
      attribute :id, Types::Float | Types::Integer
      attribute :movieId, Types::Float | Types::Integer
      attribute? :title, Types::String
      attribute? :type, Types::String
      attribute? :review, Types::String
      attribute? :date, Types::String
      attribute? :author, Types::String
      attribute? :userRating, Types::Float | Types::Integer
      attribute :authorId, Types::Float | Types::Integer
      attribute :reviewLikes, Types::Float | Types::Integer
      attribute :reviewDislikes, Types::Float | Types::Integer
      attribute :updatedAt, Types::String
      attribute :createdAt, Types::String
    end
  end
end
