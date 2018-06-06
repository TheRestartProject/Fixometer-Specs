Feature: Add new group tag  (Admin/user)
    As an admin/user
    In order to add a new group tag
    I should be able to do that by filling the fields of add new group tag pop-up and click on create new tag button

Background:
    Given the following account have been created as an admin/user
        | Email                      | Password |
        | dean@wecreatedigital.co.uk | dean     | 

Scenario: Adding new group tag
    When an admin or a user wants to add a new group tag, they should fill the fields as follows
    | Tag name          | Description(optional   | 
    | Example tag1      |                        |
    | Example tag2      |                        |
    Then he/she should click on Create new tag button to save the changes.
