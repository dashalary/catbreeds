require 'pry'
require 'httparty'
require 'json'

require_relative "catbreeds/version"
require_relative "catbreeds/cli"
require_relative "catbreeds/api"
require_relative "catbreeds/breed"

module CatBreeds
  class Error < StandardError; end
  # Your code goes here...
end
