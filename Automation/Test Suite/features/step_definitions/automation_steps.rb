Given(/^I'm on the registration page$/) do
  @browser = Watir::Browser.new :firefox
  @browser.goto'http://automationpractice.com/index.php?controller=authentication&back=my-account'
  sleep(3)
end

When(/^I enter my email$/) do
  @browser.text_field(name: 'email_create').set 'hihello123@gmail.com'
end

And(/^click register$/) do
  @browser.button(name: 'SubmitCreate').click
end

When(/^I enter all the following credentials$/) do |table|
  # table is a table.hashes.keys # => [:customer_firstname, :Kevui]
  @browser.text_field(name: 'customer_firstname').set table.raw[0][1]
  @browser.text_field(name: 'customer_lastname').set table.raw[1][1]
  @browser.text_field(name: 'email').set table.raw[2][1]
  @browser.text_field(name: 'passwd').set table.raw[3][1]
  @browser.text_field(name: 'firstname').set table.raw[4][1]
  @browser.text_field(name: 'lastname').set table.raw[5][1]
  @browser.text_field(name: 'company').set table.raw[6][1]
  @browser.text_field(name: 'address1').set table.raw[7][1]
  @browser.text_field(name: 'address2').set table.raw[8][1]
  @browser.text_field(name: 'city').set table.raw[9][1]
  @browser.text_field(name: 'postcode').set table.raw[10][1]
  @browser.text_field(name: 'phone').set table.raw[11][1]
  @browser.text_field(name: 'phone_mobile').set table.raw[12][1]
  @browser.text_field(name: 'alias').set table.raw[13][1]
end

And(/^select all the buttons and lists$/) do
  @browser.radio(id: 'id_gender1').click
  @browser.select_list(name: 'days').select '8'
  @browser.select_list(id: 'months').select '7'
  @browser.select_list(id: 'years').select '1996'
  @browser.select_list(id: 'id_state').select '12'
end

Then(/^click register account$/) do
  @browser.button(name: 'submitAccount').click
  sleep 5
  @browser.quit
end