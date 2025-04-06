# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class UnauthorizedErrorResponseDto < Base
      attribute :statusCode, Types::Float
      attribute :message, Types::String
      attribute :error, Types::String
    end
  end
end
