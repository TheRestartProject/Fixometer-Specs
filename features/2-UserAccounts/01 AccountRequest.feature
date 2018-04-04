Feature: 01 Account Request


Currently accounts are requested via email. An account is then created manually
with a temporary password. The user is then associated with the corresponding
Restart group.

        As a potential user
        I want to be able to request an account 
        So that I am able to sign in 

        As a potential user
        I want to be able to request an account 
        So that I am able to record my groups repairs

        As a potential user 
        I want to be able to request an account 
        So that I am able to see my groups impact 

            Scenario: Request Account
            Given a potential user wants to request an account
            When they go to the account request page 
            And enter the required details
            Then they will be sent an email with a temporary password
            And they will be associated with the corresponding Restart group 
            
            
