Feature: Validating login functionality
  #Scenario Outline: validate login function with valid credentials
    #Given user is on the home page
    #When user enters "demo12345@gmail.com" as username and "Demo@123" as password
    #And user clicks sign-in button
    #Then user should be on flight finder page
#Background:
#  Given user is on the home page

  Scenario Outline: validate login function with valid credentials
    When user enters "<username>" as username and "<password>" as password
    And user clicks sign-in button
    Then user should be on flight finder page
Examples:
    |username|password|
    |demo12345@gmail.com|Demo@123|

  Scenario: validate login function with invalid credentials
    When user enters "demo123@gmail.com" as username and "Demo@123" as password
    And user clicks sign-in button
    Then user should be on sign-on page