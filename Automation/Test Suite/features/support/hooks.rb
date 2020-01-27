#if you wanna run statements before or after certain scenarios, you use hooks
#this will run before ALL scenarios that you will run

# Before() do
#   @browser = Watir::Browser.new :firefox
#   @browser.goto'http://newtours.demoaut.com/mercuryregister.php'
# end

# #you can use the tag expression to run it for specific scenarios
# After('close') do
#   @browser.close
# end