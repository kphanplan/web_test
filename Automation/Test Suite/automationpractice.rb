require'watir'

browser = Watir::Browser.new :firefox
browser.goto'http://automationpractice.com/index.php?controller=authentication&back=my-account'

browser.text_field(name:'email_create').set 'fakemail42069@gmail.com'
sleep(2)
browser.button(name:'SubmitCreate').click
browser.radio(id:'id_gender1').click

browser.text_field(name:'customer_firstname').set 'Kevin'
browser.text_field(name:'customer_lastname').set 'Phan'
browser.text_field(name:'passwd').set 'password1234'

browser.select_list(tag_name:'days').select'4'
sleep(3)
browser.select_list(id:'months').select'4'

#browser.select_list(tag_name:'id_state').select("Ohio")
browser.select_list(name:'years').select'2019'

browser.text_field(name:'company').set 'ZAPS'
browser.text_field(name:'address1').set '42069 Ave.'
browser.text_field(name:'address2').set 'Unit 420, Sick Nasty apt.'
browser.text_field(name:'city').set 'Cbus'

browser.select_list(name:'id_state').select'5'

browser.text_field(name:'postcode').set '43202'
browser.text_field(name:'phone').set '6143307079'

sleep(3)
browser.button(name:'submitAccount').click
sleep(3)
browser.quit