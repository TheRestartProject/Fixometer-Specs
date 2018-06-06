Feature: Add New User
    As an admin
    In order to add a user to the community platform
    I should use "Create new user" button

Scenario: Creating New Users
    When an admin wants to create a new user
    Then click on create new user button.

Scenario: Creating new user
# Entering correct details in the fields provided at Add new user pop-up.
    When the details are entered in the feilds provided as follows
    | Name       | Email address          | User role   | Password   | Repeat password | 
    | diamond    | diamond@gmail.com      | Volunteer   | h£!!05     | h£!!05          |
    | james      | james@yahoo.com        | Restarter   | scr7vd*    | scr7vd*         |
    Then click on new user on the community platform.
