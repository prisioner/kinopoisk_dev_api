# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class ErrorResponseDto < Base
      attribute :statusCode, Types::Float
      attribute :message, Types::String
      attribute :error, Types::String
    end
  end
end
