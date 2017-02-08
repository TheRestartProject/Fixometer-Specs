Feature: 02 User Authentication
    As a user
    In order to perform what I want to do on the site
    I want to be able to log in

Background:
    Given the following user account has been created
        | Email                 | Password |
        | fry@planetexpress.com | fry!     | 

Scenario: Valid login
    When a user logs in with email 'fry@planetexpress.com' and password 'fry!'
    Then the user is authenticated as 'fry@planetexpress.com'

Scenario: Valid login with alternate case email
# Emails are case-insensitive.
    When a user logs in with email 'fry@planetexpress.com' and password 'FRY!'
    Then the user is not logged in
    And a message is displayed to the user letting them know they have not been logged in

Scenario: Invalid login due to password casing
# Passwords are case-sensitive.
    When a user logs in with email 'fry@planetexpress.com' and password 'FRY!'
    Then the user is not logged in
    And a message is displayed to the user letting them know they have not been logged in
