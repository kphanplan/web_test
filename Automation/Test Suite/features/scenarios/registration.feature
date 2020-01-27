Feature: Verify the registration page

  Scenario: Submit registration form by providing all details
    Given i'm on the registration page
    When i enter all the following fields
      |First Name|Oreo|
      |Last Name |Dog |
      |Phone     |6143307079|
      |Email     |Oreodog123@gmail.com|
      |Address   |42069 Oreo Dog ave. |
      |City      |Columbus            |
      |State     |Ohio                |
      |Zip code| 43202             |
      |Username   |oreodog123@gmail.com|
      |Password   |oreodog123          |
      |Confirm password|oreodog123     |

    And I select "France" as my country
    And I click on submit button
    Then go to 'registration complete' page
