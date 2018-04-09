    Feature:Edit Basic User Profile
        As a user
        In order to complete my profile
        I want to be able to edit basic profile information about myself

        As a user
        In order to correct incorrect or expired profile details
        I want to be able to edit basic profile information about myself.



Scenario: Add avatar
    Given User is on the edit profile page
    When User clicks edit avatar
    And Chooses a picture from files
    And Presses upload
    Then User profile avatar will be added

Scenario: Add avatar with alternate file type
    Given User is on the edit profile page
    When User clicks edit avatar
    And Chooses a word document from files
    And presses upload
    Then a message is displayed to the user letting them know the profile picture was not added as the wrong file type was chosen

Scenario: Set User Name
    Given User has not yet set a User Name
    When User edits User Name box
    And Clicks Update
    Then User Name is set

Scenario: Set User Name that is already taken
    Given User has not yet set a user name or wants to edit current User Name
    When User edits User Name box
    And enters a user name that is already taken
    And clicks update
    The User Name is not set
    And a message is displayed to the user letting them know that the user name was not updated as the user name is already taken

Scenario: Edit Email Address
    Given User wants to edit email address
    When User edits Email Address box
    And Clicks Update
    Then new Email Address is set

Scenario: Change Password
    Given User wants to edit password
    When User clicks edit password
    And enters current password
    And enters new password
    And Clicks Update
    Then new password is set

Scenario: Change Password Incorrect current password
    Given User wants to edit password
    When User clicks edit password
    And enters current password incorrectly
    And enters new password
    And Clicks Update
    Then new password is not set
    And error message appears telling user that current password was entered incorrectly



Scenario: Change Role


Scenario: Allocate Restart Group

Scenario: Save Updates
    Given user has made changes to account
    When user clicks save changes
    Then all changes are saved
    And user is returned to home page

Scenario: Reset Information
    Given user has made changes to account
    When user clicks Reset
    Then all changes are reset
    And no changes are made
    And user is returned to home page
