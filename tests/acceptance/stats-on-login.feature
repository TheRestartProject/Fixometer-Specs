Feature: stats-on-login
  In order to view current impact
  As a user
  I need to be able to see statistics on login screen

  Scenario: observe statistics 
    Given I am not logged in
      And I have three fixed devices
  When I go to login page
  Then I should see that total devices restarted is 3
   And I should see that total waste prevented is "7 kg"

  Scenario: observe statistics for devices in multiple categories and from multiple groups 
		Given I am not logged in
		And I have three events organised by three different groups 
		And I have one medium laptop fixed at each event 
		And I have one large laptop fixed at each event 
		And I have one small laptop not fixed at each event 
     When I go to login page
     Then I should see that total devices restarted is 6
      And I should see that total waste prevented is "8 kg"
      And I should see that total parties thrown is 3

