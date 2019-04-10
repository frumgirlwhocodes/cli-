#require "cli/version"
require "nokogiri"
require "open-uri"
require "pry"


require_relative "./cli/version"
require_relative "./cli/enviroment"
require_relitive "./cli/library"
require_relative "./cli/scraper"



module Cli
  class Error < StandardError; end
  # Your code goes here...
end
