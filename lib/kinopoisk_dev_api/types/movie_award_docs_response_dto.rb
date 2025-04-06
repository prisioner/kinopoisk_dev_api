# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class MovieAwardDocsResponseDto < Base
      attribute :docs, Types::Array.of(MovieAward)
      attribute :total, Types::Float
      attribute :limit, Types::Float
      attribute :page, Types::Float
      attribute :pages, Types::Float
    end
  end
end
