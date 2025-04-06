# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class PersonAwardDocsResponseDto < Base
      attribute :docs, Types::Array.of(PersonAward)
      attribute :total, Types::Float | Types::Integer
      attribute :limit, Types::Float | Types::Integer
      attribute :page, Types::Float | Types::Integer
      attribute :pages, Types::Float | Types::Integer
    end
  end
end
