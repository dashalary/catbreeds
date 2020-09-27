require 'pry'
require 'httparty'
require 'dotenv/load'

require_relative "catbreeds/version"
require_relative "catbreeds/cli"
require_relative "catbreeds/api"
require_relative "catbreeds/breeds"

module CatBreeds
  class Error < StandardError; end
  # Your code goes here...
end
