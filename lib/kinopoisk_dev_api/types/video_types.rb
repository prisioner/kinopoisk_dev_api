# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class VideoTypes < Base
      attribute? :trailers, Types::Array.of(Video)
    end
  end
end
