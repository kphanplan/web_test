Given(/^user is on flight finder page$/) do
  @browser = Watir::Browser.new :firefox
  @browser.goto'http://newtours.demoaut.com/index.php'
end

When(/^user enters registration info$/) do
  on(FlightPage).username_element.set 'oreodog123@gmail.com'
  on(FlightPage).password_element.set 'oreodog123'
end

And(/^submits the work$/) do
  on(FlightPage).signin_element.click
end

Then(/^user is taken to flight finder page$/) do
  puts @browser.title
end

And(/^fills out the rest of the info$/) do
  on(FlightPage).passengers_element.select'2'
  on(FlightPage).departing_element.select'New York'
  on(FlightPage).departingmonth_element.select'October'
  on(FlightPage).departingday_element.select'19'
  on(FlightPage).arriving_element.select'Paris'
  on(FlightPage).arrivingmonth_element.select'October'
  on(FlightPage).arrivingday_element.select'21'
  on(FlightPage).airline_element.select'Unified Airlines'
  on(FlightPage).firstclass_element.click
  on(FlightPage).findflight_element.click
end

Then(/^user has flights registered$/) do
  sleep 2
  on(FlightPage).reserveflight_element.click
end

And(/^user fills in purchase info$/) do |table|
  (0..11).each do |i|
on(FlightPage).send("#{table.raw[i][0].gsub(' ','').downcase}_element").set table.raw[i][1]
end
on(FlightPage).expmonth_element.select'07'
on(FlightPage).expyear_element.select'2010'
on(FlightPage).bill_element.click
on(FlightPage).deladdress_element.clear
on(FlightPage).delcity_element.clear
on(FlightPage).delstate_element.clear
on(FlightPage).delzip_element.clear
  sleep 2
end

Then(/^finalizes flight$/) do
  on(FlightPage).buy_element.click
end