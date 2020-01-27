#this will be your environmental file. It'll be here in the support file of your support file
# It'll be the first step of your framework. Everything in here is executed FIRST before anything

gem 'cucumber'
gem 'watir'
gem 'rspec'
require 'page-object'

#World(PageObject::PageFactory)
#you can use this (below) to run multiple browsers or check for multiple things
def launch_browser
@browser_value = ENV['browser']
case @browser_value
when 'firefox'
@browser = Watir::Browser.new :firefox
when 'chrome'
@browser = Watir::Browser.new :chrome
when 'ie'
@browser = Watir::Browser.new :ie
else
puts "#{browser_value} is incorrect. Please enter either chrome or firefox or ie"
end
end