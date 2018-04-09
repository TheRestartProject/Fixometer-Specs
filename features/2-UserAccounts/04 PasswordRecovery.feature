Feature: 03 Password Recovery

As a user 
I want to be able to recover my password
So that I am able to login if I forget my password

Scenario: Request Password Recovery
  Given A user has clicked forgotten password
  When The user enters valid email address in email address field
  Then a password recovery email should be sent to the email address

Scenario: Request Password Recovery with invalid email address
  Given A user has clicked forgotten password
  When the user enters an invalid email address
  Then an error message will appear informing user than an invalid email address has been entered 
  
Scenario: Reset password using link in email
  Given a user has recieved a password recovery email
  And has clicked on the password reset link
  When they have entered a new password
  And press save
  Then the password will be reset
