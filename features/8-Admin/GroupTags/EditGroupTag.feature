Feature: Edit group tag
    As an admin
    In order to add edit group tag
    I should navigate to edit group tag page and click on save tag to save the changes

Scenario: Editing a group tag
    When the fields are editted as follows
    | Tag name          | Description(optional   | 
    | Example tag12     |                        |
    | Example tag2      |                        |
    Then he/she should click on save tag button to save the changes.

Scenario: Deleting a group tag
    When an admin wants to delete a group tag
    Then he/she should click on delete tag button to delete the group tag.
