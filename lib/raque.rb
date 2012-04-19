require 'logger'
require 'rake'

class Raque
  @queue = :raque

  def self.perform task_string, output_file = false
    logger = Logger.new(output_file || STDOUT)

    logger.info "[Raque] Received task string \"#{task_string}\""
    args = []
    if args_s = task_string.match(/\[.*\]/)
      args = eval args_s.to_s
      task_string.gsub! /\[.*\]/, ''
    end

    logger.info "[Raque] Starting Rake task \"#{task_string}\""
    logger.info "[Raque] with arguments #{args.inspect}" if args.size > 0

    result = capture_stdout { Rake::Task[task_string].invoke *args }

    Rake::Task[task_string].reenable

    logger.info result
    logger.info "[Raque] Finished Rake task\n"
    logger.close
  end

  def self.capture_stdout
    s = StringIO.new
    oldstdout = $stdout
    $stdout = s
    yield
    s.string
  ensure
    $stdout = oldstdout
  end

end
