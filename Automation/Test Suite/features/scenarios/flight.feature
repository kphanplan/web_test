Feature: Flight finder

  Scenario: User enters shit into registration for flight finder
    Given user is on flight finder page
    When user enters registration info
    And submits the work
    Then user is taken to flight finder page
    And fills out the rest of the info
    Then user has flights registered
    And user fills in purchase info
      |firstname1|kevui |
      |lastname1 |pan   |
      |firstname2|Larn  |
      |lastname2 |schweb|
      |cardnumber|2542322890724451|
      |cardfname |kevui           |
      |cardmname |clean           |
      |cardlname |pan             |
      |address   |42069 Haha st.  |
      |city      |cbus            |
      |state     |OH              |
      |zipcode   |43202           |
    Then finalizes flight