require 'thor'
require 'raque'

module Raque
  class CLI < Thor
    include Thor::Actions

    desc "COMMAND [LOG_FILE]", "Adds COMMAND to the Resque Raque queue."
    def build command, log_file
      say "Adding #{command} to Resque Raque queue"

      Resque.enqueue Raque, command, log_file
    end
  end
end
