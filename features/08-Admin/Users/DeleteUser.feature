@gdpr
Feature: Delete User

    As a user
    In order to exercise my right to be forgotten
    I would like to be able to delete my account
    
Deleting accounts is possible by the user themselves, or an Admin.

Deleting an account means the user will no longer be able to log in
to the system, and all of their personally identifiable information 
will be removed.

The repair-related data that has been contributed to the platform by
the user will not be removed.  During registration, users have to 
explicitly consent to license their repair data to the site owners.

Behind the scenes, we won't physically remove the user account - we will
anonymise it so that there is nothing personally identifiable remaining, 
and marked the account as deleted.

Deleted users will no longer be able to log in to the system.
It is possible that a new user account will be created using the same
email address in future.

TODO: Given that the community platform is managing the accounts for
Discourse and the Wiki via SSO, we need to also understand how deleting
an account with the community platform will remove/deactivate accounts
in the corresponding platforms.

Scenario: Admin deletes user's account
  Given an Admin is on a user's account page
  When she deletes the users account
  Then the user's personal data is anonymised
  And the account is marked as inactive
  And the Admin is directed to the All Users page
  And the Admin is shown a message showing that this user has been successfully deleted
