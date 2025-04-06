# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class ImageDocsResponseDtoV1_4 < Base
      attribute :docs, Types::Array.of(Image)
      attribute :total, Types::Float
      attribute :limit, Types::Float
      attribute :page, Types::Float
      attribute :pages, Types::Float
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
