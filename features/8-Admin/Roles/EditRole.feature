Feature: Edit Role
    As an admin
    In order to create/edit/delete a user and to create a party
    I should be able to do on an edit page and saving the changes through save role button

Background:
    Given the following account have been created as an admin
        | Email                      | Password |
        | dean@wecreatedigital.co.uk | dean     | 

Scenario: Editing User Role
    When the user permission(s) checked
    Then the user will have those permissions to do and click on save role to save the changes.
   
