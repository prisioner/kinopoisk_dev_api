# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class NetworkItemV1_4 < Base
      attribute? :name, Types::Coercible::String.optional
      attribute? :logo, Logo.optional
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
