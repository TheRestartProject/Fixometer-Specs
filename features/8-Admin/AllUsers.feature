Feature: Search - All users
    As an admin
    In order to see all users or search for a perticular user
    I should be able to do by using a search button

Background:
    Given the following account have been created as an admin
        | Email                      | Password |
        | dean@wecreatedigital.co.uk | dean     | 

Scenario: Search Users
    When an admin wants to verify/see a perticular user
    Then he/she should be able to do that by using a search functionality(button).

Scenario: Valid search
# Entering correct details in the fields provided at By details ctegory.
    When an admin enter detais of a perticular user in the feilds provided as follows
    | Name       | Email                  | Town/City   | Group      | Role       | 
    | jenny      | jenny@gmail.com        | London      | Remakery   | Host       |
    | diamond    | diamond@gmail.com      | Belgium     | Group2     | Volunteer  |
    | james      | james@yahoo.com        | Portsmouth  | Group3     | Restarter  |
    Then the admin should get the details of that perticalr user.

Scenario: Invalid Search
# 