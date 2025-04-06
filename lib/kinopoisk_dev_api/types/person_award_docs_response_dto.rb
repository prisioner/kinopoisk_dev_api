# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class PersonAwardDocsResponseDto < Base
      attribute :docs, Types::Array.of(PersonAward)
      attribute :total, Types::Float
      attribute :limit, Types::Float
      attribute :page, Types::Float
      attribute :pages, Types::Float
    end
  end
end
