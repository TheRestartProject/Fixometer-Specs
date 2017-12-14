Feature: stats-on-login
  In order to view current impact
  As a user
  I need to be able to see statistics on login screen

  Scenario: observe statistics
    Given I am not logged in
      And I have three fixed devices in the database
  When I go to login page
  Then I should see that total devices restarted is 3
   And I should see that total waste prevented is "7 kg"
