# frozen_string_literal: true

require 'json'
require 'faraday'
require 'zeitwerk'
require "dry-struct"
require "kinopoisk_dev_api/inflector"

loader = Zeitwerk::Loader.for_gem(warn_on_extra_files: false)
loader.inflector = KinopoiskDevApi::Inflector.new(__FILE__)
loader.setup

module KinopoiskDevApi
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
