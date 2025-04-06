# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Nomination < Base
      attribute? :award, Award
      attribute? :title, Types::String
    end
  end
end
