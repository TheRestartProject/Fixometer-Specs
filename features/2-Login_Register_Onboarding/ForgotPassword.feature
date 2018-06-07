Feature: Forgot Password
    As a User
    In order to get a new password
    I should be able to do that in forgot password page. 

 Given the following user accounts have been created
    | Email                    | Role  |
    | hubert@planetexpress.com | User  |

Scenario: Forgot Password
    When a user completes the fields as follows
    | Email address              |
    | hubert@planetexpress.com   |
    And clicks on rest button
    Then user should land on same page with a message saying the please check your email and follow.

Scenario: I remembered Password 
    When a user remembers the password
    And clicks on the link I remembered. Let me sign in
    Then the user lands on login page.