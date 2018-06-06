Feature: Add Brand (Admin/user)
    As an admin/user
    In order to add a brand
    I should be able to do that by filling the fields of add brand pop-up and click on create new brand button

Background:
    Given the following account have been created as an admin/user
        | Email                      | Password |
        | dean@wecreatedigital.co.uk | dean     | 

Scenario: Adding new brand
    When an admin or a user wants to add a new brand name, they should fill the field as follows
    | Brand name       | 
    | TP-Link          |                                             
    Then he/she should click on Create new brand button to save the changes.
