# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Fees < Base
      attribute? :world, CurrencyValue
      attribute? :russia, CurrencyValue
      attribute? :usa, CurrencyValue
    end
  end
end
