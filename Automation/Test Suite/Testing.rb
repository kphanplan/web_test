require 'watir'

#browser = Watir::Browser.new :chrome
browser = Watir::Browser.new :firefox
#Watir::Browser.new browser:ie

browser.goto 'https://www.ultimateqa.com/simple-html-elements-for-automation/'

browser.text_field(id: 'et_pb_contact_name_0').set 'ZAPS'
name_text = browser.text_field(id: 'et_pb_contact_name_0').value
puts name_text
sleep(5)
browser.text_field(id: 'et_pb_contact_email_0').set 'thekphantastic@gmail.com'

puts browser.button(class: 'et_pb_contact_submit').text
puts browser.button(class: 'et_pb_contact_submit').enabled?
browser.button(xpath: "//*[@id=\"et_pb_contact_form_0\"]/div[2]/form/div/button").click
############ All the code up to this point has automatically entered our info and pressed "submit" for us ###########
table1 = browser.table(id: 'htmlTableId')

puts table1[1][0].text
puts table1.rows.length
puts table1.row.count
cols = table1.row.cells.count
table1.trs.each do |i|
  (0...cols).each do |j|
    puts i[j].text
  end
end
############ the code above tells us all the text within the table #################

puts browser.element(:css => '#idExample').text           #CSS examples: # means ID, . means class, tag is 'a'
puts browser.element(css: ".buttonClass").text + "using CSS class"
puts browser.element(:css,'h3').text + 'using tag name'    #here, H3 is the tag.
puts browser.element(:css, '.buttonClass').text 'using class' #or tagname.classname
puts browser.element(:css, '[id=button1]').text + 'using attributes' #can use name, value, or another attribute
puts browser.element(:css, '[id=button1][type=submit]').text + 'using multiple attributes'

#This just shows us we can mark an object using ID, name, CSS, or Xpath