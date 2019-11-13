require_relative "Waves/version"
require_relative "Waves/cli"
require_relative "Waves/scrapper"
require_relative "Waves/beaches"

require "pry"
require "httparty"

module Waves
  class Error < StandardError; end
  # Your code goes here...
end
