# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class KeywordDocsResponseDtoV1_4 < Base
      attribute :docs, Types::Array.of(Keyword)
      attribute :total, Types::Float | Types::Integer
      attribute :limit, Types::Float | Types::Integer
      attribute :page, Types::Float | Types::Integer
      attribute :pages, Types::Float | Types::Integer
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
