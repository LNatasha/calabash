# Requiring this file will import:
# * the Calabash Cucumber API,
# * the Calabash Cucumber predefined Steps,
# * and the Calabash::Formatters::Html cucumber formatter.
require "calabash-cucumber/cucumber"

if ENV['PLATFORM'] == 'ios'
require 'calabash-cucumber/cucumber'
elsif ENV['PLATFORM'] == 'android'
require 'calabash-android/cucumber'
end

class RunState
@@first_run = true
def self.run!
@@first_run = false
end
def self.first_run?
@@first_run
end
end
