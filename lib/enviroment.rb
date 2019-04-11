#require "cli/version"
require "nokogiri"
require "open-uri"
require "pry"


require_relative "./cli/version"
require_relitive "./cli/library"
require_relative "./cli/scraper"
require_relative "./cli/command_line"



module Cli
  class Error < StandardError; end
  # Your code goes here...
end
