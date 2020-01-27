class LoginPage
  include PageObject

  text_field(:firstname,name: 'firstName')
  text_field(:lastname,name: 'lastName')
  text_field(:phone,name: 'phone')
  text_field(:email,name: 'userName')
  text_field(:address,name: 'address1')
  text_field(:city,name: 'city')
  text_field(:state,name: 'state')
  text_field(:zipcode,name: 'postalCode')
  text_field(:username,name: 'email')
  text_field(:password,name: 'password')
  text_field(:confirmpassword,name: 'confirmPassword')

  #button(:submit,value: 'Login').click

  #link(:register,visible_text: 'REGISTER')
end
