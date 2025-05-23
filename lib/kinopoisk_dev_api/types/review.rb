# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Review < Base
      attribute? :id, Types::Float | Types::Integer
      attribute? :movieId, Types::Float | Types::Integer
      attribute? :title, Types::Coercible::String
      attribute? :type, Types::Coercible::String
      attribute? :review, Types::Coercible::String
      attribute? :date, Types::Coercible::String
      attribute? :author, Types::Coercible::String
      attribute? :userRating, Types::Float | Types::Integer
      attribute? :authorId, Types::Float | Types::Integer
      attribute? :reviewLikes, Types::Float | Types::Integer
      attribute? :reviewDislikes, Types::Float | Types::Integer
      attribute? :updatedAt, Types::Coercible::String
      attribute? :createdAt, Types::Coercible::String
      alias movie_id movieId
      alias user_rating userRating
      alias author_id authorId
      alias review_likes reviewLikes
      alias review_dislikes reviewDislikes
      alias updated_at updatedAt
      alias created_at createdAt
    end
  end
end
