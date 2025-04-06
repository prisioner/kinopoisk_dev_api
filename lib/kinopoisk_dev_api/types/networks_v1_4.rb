# frozen_string_literal: true

module KinopoiskDevApi
  module Types
    ## Just for classes consistency
    # rubocop:disable Naming/ClassAndModuleCamelCase
    class NetworksV1_4 < Base
      attribute? :items, Types::Array.of(NetworkItemV1_4)
    end
    # rubocop:enable Naming/ClassAndModuleCamelCase
  end
end
