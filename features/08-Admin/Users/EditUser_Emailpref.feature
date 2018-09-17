Feature: Email Preferences
    As a member of restarters.net
    In order to control the level of communication I get
    I should be able to control which emails I receive from the platform
    
There are various email notifications that can be sent out from the platform.
Users may or may not wish to receive all (or any) of these.
In the email preferences section when editing their preferences, they should be
able to choose which notifications they receive emails about.  They will still
receive notifications about these within the platform.

At present, we have just two preferences options - receiving the monthly newsletter,
and email notifications about 'events or groups near me'.  We will be making this
more fine-grained.

In the first instance, we'll use this for allowing admins to opt-out of receiving
notifications about new events created (not everyone needs to see these).

Background:
    Given the following account have been created as a user
        | Email                      | Password |
        | jenny@google.co.uk         | dean1    | 

Scenario: Check Email preferences
    When an admin wants to get notified by the Restart Project
    And ticking-off the checkbox and click on save preferences button
    Then she should land on Email preferences page with a message saying that the changes have been saved.

Scenario: Creating an email.
# User can create a email or set an email to Restart Project discussion platform and click on save preferences button
    When a user create a email or set an email to Restart Project discussion platform
    Then the user receives the information to that email id

# This should also be tested for users logged in a host/restarter and an admin changing their own profile.

 
