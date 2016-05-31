Feature: Signing out
  In order to keep authentication
  A user
  Should sign out

  
  Scenario: Successful signout
    Given a user on the homepage
    When the user click signout path
    Then they should see the static page
    And they should see a signin link
