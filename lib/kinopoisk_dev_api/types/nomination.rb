# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Nomination < Base
      attribute? :award, NominationAward
      attribute? :title, Types::String
    end
  end
end
