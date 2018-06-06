Feature: All group tags  (Admin/user)
    As an admin/user
    In order to see all the group tags 
    I should be able to do that by navigating to group tags page

Background:
    Given the following account have been created as an admin/user
        | Email                      | Password |
        | dean@wecreatedigital.co.uk | dean     | 

Scenario: All Group Tags
    When an admin or a user wants to see all the group tags at one place
    Then he/she should navigate to Group Tags page.

Scenario: Creating new tag
    When an admin or a user wants to create a new group tag
    Then he/she should click on create new tag button.


    