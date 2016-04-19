Feature: An user can tweet
  As an user
  I can tweet
  
  Scenario: Tweeting
    Given I am on the home page
    When I fill in "Body" with "Hello World!"
    And I fill in "Username" with "ngohaanh"
    And I press "Tweet"
    Then I should see "Hello World!"
    And I should see "ngohaanh"
    And I should see "less than a minute ago"
  
  Scenario: Viewing existing tweets
    Given the following tweets exist:
      | body        | username |
      | Hello world | haanh    |
      | Welcome!    | lamdv    |
    When I go to the homepage
    Then I should see "Hello world"
    And I should see "@haanh"
    And I should see "Hi!"
    And I should see "@lamdv"
    
  Scenario: An user sees 10 tweets per page
    Given the following tweets exist:
      | body         | username |
      | Goodbye.     | oldman   |
      | Hi!          | lamdv    |
      | Hello world  | haanh    |
      | Hi!          | lamdv    |
      | How are you? | haanh    |
      | I'm fine     | lamdv    |
      | Really?      | haanh    |
      | Yes and you? | lamdv    |
      | Terrible     | haanh    |
      | Okay         | lamdv    |
      | Nice to meet | haanh    |
      | Me too       | lamdv    |
    When I go to the home page
    Then I should not see "@oldman"
    And I should see "Next"
    When I follow "Next"
    Then I should see "@oldman"
    And I should see "Goodbye."