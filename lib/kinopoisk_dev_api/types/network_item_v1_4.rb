# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class NetworkItemV1_4 < Base
      attribute? :name, Types::String
      attribute? :logo, Logo
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
