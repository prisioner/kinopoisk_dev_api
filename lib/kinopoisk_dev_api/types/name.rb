# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    class Name < Base
      attribute? :name, Types::String
      attribute? :language, Types::String
      attribute? :type, Types::String
    end
  end
end
