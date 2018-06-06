Feature: Edit Brand Name  (Admin/user)
    As an admin/user
    In order to add edit brand name
    I should be able to do that by navigating to edit brand page and click on save brand to save the changes

Background:
    Given the following account have been created as an admin/user
        | Email                      | Password |
        | dean@wecreatedigital.co.uk | dean     | 

Scenario: Editing a brand name
    When an admin or a user wants to edit a brand name, they should edit the field as follows
    | Brand name       | 
    | HP               |
    Then he/she should click on save brand button to save the changes.
