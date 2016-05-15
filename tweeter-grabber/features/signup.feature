Feature: Signing up
  In order to use tweeter grabber
  A user
  Should sign up

  
  Scenario: Successful signup
    Given a user visits the signup page
    When they submit valid signup information
    Then they should see their profile page
    And they should see success message

  Scenario: Unsuccessful signup
    Given a user visits the signup page
    When they submit invalid signup information
    Then it should not create a user
    