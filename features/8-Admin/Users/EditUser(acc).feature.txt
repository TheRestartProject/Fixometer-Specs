Feature: Edit user (Account)
    As a User
    In order to change the account details entered before
    I should be able to do by using a edit functionality

Background:
    Given the following account have been created as a user
        | Email                      | Password |
        | jenny@google.co.uk         | dean1    | 

Scenario: Edit User account
    When a user wants to change/update any account details 
    Then he/she should be able to do that by changing the account details and saving them.

Scenario: Changing Password 
# User can change password and click on change password button
    When a user changes his/her account password as follows and clicks on change password button
    | Current password   | New password   | New repeat password | 
    | jenny              | hello!         | hello!              |
    | diamond            | hi£donna!      | hi£donna!           | 
    Then the user saves all the changes he/she made in that section

Scenario: Admin only
# Updating details in the Repair skills section
  When the admin uses this page to change a users role and group
  Then only admin can have that privilage to do. 