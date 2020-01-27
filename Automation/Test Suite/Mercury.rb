require'watir'

browser = Watir::Browser.new :firefox
browser.goto'http://newtours.demoaut.com/mercuryregister.php'

browser.text_field(name:'firstName').set 'Kevin'
sleep(2)
browser.text_field(name:'lastName').set 'Phan'
browser.text_field(name:'phone').set '614 330 7079'
browser.text_field(name:'userName').set 'thekphantastic@gmail.com'
browser.text_field(name:'address1').set '6969 Pooh Ave.'
browser.text_field(name:'address2').set 'Pickleton, OH'
browser.text_field(name:'city').set 'Pickleton, OH'
browser.text_field(name:'state').set 'Ohio'
browser.text_field(name:'postalCode').set '42069'
browser.text_field(name:'email').set 'KPKP'
browser.text_field(name:'password').set 'password1234'
browser.text_field(name:'confirmPassword').set 'password1234'
sleep(2)

browser.button(name:'register').click
sleep(4)
browser.quit