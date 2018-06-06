Feature: Edit skill
    As an admin
    In order to add edit my skill
    I should navigate to edit skill page and click on save skill to save the changes

Background:
    Given the following account have been created as an admin/user
        | Email                      | Password |
        | dean@wecreatedigital.co.uk | dean     | 

Scenario: Editing a skill
    When an admin edit a skill which is in their profile, they should edit the fields as follows
    | Skill name        | Description(optional   | 
    | Scanners          |                        |
    | laptops           |                        |
    Then click on save skill button to save the changes.

Scenario: Deleting a skill
    When an admin wants to delete a skill which is in their profile
    Then click on delete skill button to delete the skill.
