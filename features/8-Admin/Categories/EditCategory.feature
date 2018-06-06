Feature: Edit Category
    As a User or an Admin
    In order to change the details of category
    I should be able to do by using a edit category page

Background:
    Given the following account have been created as a user or an admin
        | Email                      | Password |
        | jenny@google.co.uk         | dean1    | 

Scenario: Edit Category
    When a user wants to change/update any fields of edit category section as follows
    | Category name            | weight() |
    | jenny@google.co.uk       | dean1    | 
    Then he/she should be able to do that by changing the details and saving them.