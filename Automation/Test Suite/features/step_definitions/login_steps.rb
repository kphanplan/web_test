require'watir'
require 'cucumber'

Given(/^user is on the home page$/)do
  puts @browser.title
end
###This step below is the step definition for VALID credentials
#When(/^user enters correct username and password$/) do
 # @browser.text_field(name:'userName').set 'demo123@gmail.com'
  #@browser.text_field(name:'password').set 'Demo123'
#end
###This step below is for invalid credentials
When(/^user enters "([^"]*)" as username and "([^"]*)" as password$/) do |username, password|
  #@browser.text_field(name:'userName').set username
  #@browser.text_field(name:'password').set password

  on(LoginPage).username_element.set username
  on(LoginPage).password_element.set password

end

And(/^user clicks sign-in button$/) do
  #@browser.button(name: 'register').click
  on(LoginPage).register_element.click
end

Then(/^user should be on flight finder page$/) do
  expect(@browser.title).to eq "Find a Flight: Mercury Tours"
end

Then(/^user should be on sign-on page$/) do
  expect(@browser.title).to eq "Sign-on: Mercury Tours"
  #or you can use to_not eq:
  # expect(@browser.title).to_not eq "Find a flight: Mercury Tours"
end