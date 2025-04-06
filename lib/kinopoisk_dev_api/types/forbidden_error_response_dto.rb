# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class ForbiddenErrorResponseDto < Base
      attribute :statusCode, Types::Float | Types::Integer
      attribute :message, Types::String
      attribute :error, Types::String
    end
  end
end
