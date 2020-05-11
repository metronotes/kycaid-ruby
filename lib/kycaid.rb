require "faraday"
require "json"
require "ostruct"

require "kycaid/version"
require "kycaid/configuration"
require "kycaid/client"

module KYCAID
  class Error < StandardError; end

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration) if block_given?
  end
end