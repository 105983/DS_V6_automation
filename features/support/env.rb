require 'rubygems'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rspec/expectations'
require 'capybara/rspec'
require 'selenium/webdriver'
require 'yaml'
require 'rspec'
# require 'mail'
include RSpec::Matchers
=begin
require 'json'
require 'roo'
require "yaml/store"
require 'debase_internals'
require 'win32ole'
=end

#<----------------------End of Function---------------------->

Capybara.default_driver = :selenium
# Capybara.javascript_driver = :webkit
Capybara.javascript_driver = :selenium
Capybara.default_max_wait_time = 20
# Capybara.default_selector = :css
 Capybara.app_host='http://google.com/'
#<----------------------End of Function---------------------->

#<----------------------End of Function---------------------->

# Browser initialization
Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app,:browser=>:internet_explorer)
end

Selenium::WebDriver::Driver.class_eval do
  def quit
    STDOUT.puts "#{self.class}#Browser will not be Quited!!!"
  end
end

Capybara::Selenium::Driver.class_eval do
    def reset!
  end
end
