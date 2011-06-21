require 'logger'

puts "Hello Word!"
log = Logger.new("logs/auto-commit.log")
  log.level = Logger::WARN
  log.debug("Created logger")
  log.info("Program started")
  log.warn("Nothing to do!")
