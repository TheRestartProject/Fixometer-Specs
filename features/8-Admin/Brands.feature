Feature: Brand name  (Admin/user)
    As an admin/user
    In order to see all the brand names in one page 
    I should be able to do that by navigating to brand page

Background:
    Given the following account have been created as an admin/user
        | Email                      | Password |
        | dean@wecreatedigital.co.uk | dean     | 

Scenario: All Brands
    When an admin or a user wants to see all the brand names at one place
    Then he/she should navigate to brand page and view all the brand name with a link.

Scenario: Creating new brand
    When an admin or a user wants to create a new brand
    Then he/she should click on create new brand button.
