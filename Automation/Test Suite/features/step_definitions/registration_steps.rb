Given(/^i'm on the registration page$/) do
  @browser = Watir::Browser.new :firefox
  @browser.goto'http://newtours.demoaut.com/mercuryregister.php'
end

When(/^i enter all the following fields$/) do |table|

  (0..10).each do |i|
    on(RegistrationPage).send("#{table.raw[i][0].gsub(' ','').downcase}_element").set table.raw[i][1]
  # on(RegistrationPage).firstname_element.set table.raw[0][1]
  # on(RegistrationPage).lastname_element.set table.raw[1][1]
  # on(RegistrationPage).phone_element.set table.raw[2][1]
  # on(RegistrationPage).email_element.set table.raw[3][1]
  # on(RegistrationPage).address_element.set table.raw[4][1]
  # on(RegistrationPage).city_element.set table.raw[5][1]
  # on(RegistrationPage).state_element.set table.raw[6][1]
  # on(RegistrationPage).zipcode_element.set table.raw[7][1]
  # on(RegistrationPage).username_element.set table.raw[8][1]
  # on(RegistrationPage).password_element.set table.raw[9][1]
  # on(RegistrationPage).confirmpassword_element.set table.raw[10][1]

  # @browser.text_field(name: 'userName').set table.raw[3][1]
  # @browser.text_field(name: 'address1').set table.raw[4][1]
  # @browser.text_field(name: 'city').set table.raw[5][1]
  # @browser.text_field(name: 'state').set table.raw[6][1]
  # @browser.text_field(name: 'postalCode').set table.raw[7][1]
  # @browser.text_field(name: 'email').set table.raw[8][1]
  # @browser.text_field(name: 'password').set table.raw[9][1]
  # @browser.text_field(name: 'confirmPassword').set table.raw[10][1]
  end
  end

And(/^I select "([^"]*)" as my country$/) do |country|
  on(RegistrationPage).country_element.select'65'
end

And(/^I click on submit button$/) do
  on(RegistrationPage).register_element.click
end

Then(/^go to 'registration complete' page$/) do
  pending
end
