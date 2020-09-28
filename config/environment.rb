require 'pry'
require 'httparty'
require 'dotenv'
require 'json'

require_relative "../lib/version"
require_relative "../lib/cli"
require_relative "../lib/api"
require_relative "../lib/breed"

module CatBreeds
  class Error < StandardError; end
  # Your code goes here...
end
