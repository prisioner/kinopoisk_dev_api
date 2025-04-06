# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class ShortImage < Base
      attribute? :url, Types::Coercible::String.optional
      attribute? :previewUrl, Types::Coercible::String.optional
      alias preview_url previewUrl
    end
  end
end
