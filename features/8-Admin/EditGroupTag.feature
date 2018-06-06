Feature: Edit group tag  (Admin/user)
    As an admin/user
    In order to add edit group tag
    I should be able to do that by navigating  to edit group tag page and click on save tag to save the changes

Background:
    Given the following account have been created as an admin/user
        | Email                      | Password |
        | dean@wecreatedigital.co.uk | dean     | 

Scenario: Editing a gruop tag
    When an admin or a user wants to edit a group tag, they should edit the fields as follows
    | Tag name          | Description(optional   | 
    | Example tag12     |                        |
    | Example tag2      |                        |
    Then he/she should click on save tag button to save the changes.

Scenario: Deleting a group tag
    When an admin or a user wants to delete a group tag
    Then he/she should click on delete tag button to delete the group tag.
