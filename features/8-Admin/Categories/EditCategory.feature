Feature: Edit Category
    As a User or an Admin
    In order to change the details of category
    I should be able to do by using a edit category page

Background:
    Given the following account have been created as a user
        | Email                      | Password |
        | jenny@google.co.uk         | dean1    | 

Scenario: Edit User
    When a user wants to change/update any details 
    Then he/she should be able to do that by changing the details and saving them.

Scenario: Editing My Profile
# Updating details in the My Profile section and click on save profile button
    When a user enter details in My Profile section as follows and clicks on save profile
    | Name       | Email address          | Age | Country         | Town/City   | Gender  | Your biography(optional)     | 
    | jenny      | jenny@gmail.com        | 45  | United Kingdom  | Remakery    | Male    | I am an Artist by proffesion |
    | diamond    | diamond@gmail.com      | 23  | Spain           | Belgium     | Male    |                              |
    Then the user saves all the cahnges he made in that section

Scenario: Editing Repair Skills
# Updating details in the Repair skills section
   When a user types the skills he/she have 
    | My Skills       | 
    | Mobiles devices |
    | Laptops         |
    | Kitchen devices |
    Then the user saves the changes in that section.

Scenario: Upload profile picture
# Updating the profile picture in change my photo section
   When a user wants to change their profile picture
   Then the user can make the changes by browsing the pic and click on change photo button. 

Scenario: Deleting user account
# Deleting user account by the admin 
   When an admin 
   Then  