Feature: Registering an account

Scenario: Submiting information to register account
  Given I'm on the registration page
  When I enter my email
  And click register
  When I enter all the following credentials
    |customer_firstname|Kevui|
    |customer_lastname |Pan  |
    |email             |thekphantastic@gmail.com|
    |passwd            |Panpanpan123            |
    |firstname         |kevui                   |
    |lastname          |pan                     |
    |company           |Tesla                   |
    |address1          |42069 tee hee ave       |
    |address2          |NA                      |
    |city              |Cbus                    |
    |postcode          |43147                   |
    |phone             |6143307079              |
    |phone_mobile      |6143207777              |
    |alias             |Kphan                   |
  And select all the buttons and lists
  Then click register account