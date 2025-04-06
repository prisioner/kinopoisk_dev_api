# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Logo < Base
      attribute? :url, Types::Coercible::String.optional
    end
  end
end
