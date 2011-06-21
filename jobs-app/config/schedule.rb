# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
set :output, "/Users/liellis/Dropbox/Tutorials/Rails/agile-web-development-rails-third/jobs-app/logs/cron.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

every 1.hour do
  command "cd /Users/liellis/Dropbox/Tutorials/Rails/agile-web-development-rails-third/jobs-app && push origin master" 
end

every 2.minutes do
  command "cd /Users/liellis/Dropbox/Tutorials/Rails/agile-web-development-rails-third/jobs-app && ruby auto-push.rb"
end

