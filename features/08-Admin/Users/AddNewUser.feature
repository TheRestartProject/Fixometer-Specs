Feature: Add New User
    As an Admin
    In order to create new user accounts for cases when the user can't self-register
    I would like a Create New User facility.
    
Since version 4, the majority of the users will self-register onto the platform.
However, we still retain the option for Admin users to be able to create new users.
This may be needed in cases where a volunteer user is unable to create their own account
for whatever reason.

This will be quite rare I would expect.  In most cases, in order to invite people to use
the platform, we could simply send them a link to the registration page.

Note: when a new user is created this way, they will be sent an email which will take
them through the registration process (to complete their skills, etc).  The parts of their
profile which has already been created by the Admin would be pre-completed.  It's a similar
process for the onboarding steps for existing users during migration.

Scenario: Creating new users
    Given an Admin user is on the All Users page
    When she clicks the New User button
    Then she is shown the dialog for creating the new user

Scenario: Valid details added for user
# Entering correct details in the fields provided at Add new user pop-up.
    Given an Admin is creating a new user
    When she enters the new user's details in the fields provided as follows:
    | Name       | Email address          | User role   | Password   | Repeat password | 
    | diamond    | diamond@gmail.com      | Volunteer   | h£!!05     | h£!!05          |
    | james      | james@yahoo.com        | Restarter   | scr7vd*    | scr7vd*         |
    And she clicks 'Create new user'
    Then she lands on the All Users page with the newly added user in the list of users
    And she is shown a message saying that new user has been added successfully

Scenario: Invalid details added for user
  # TODO
