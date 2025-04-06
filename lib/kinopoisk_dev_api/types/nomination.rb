# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Nomination < Base
      attribute? :award, NominationAward.optional
      attribute? :title, Types::Coercible::String.optional
    end
  end
end
