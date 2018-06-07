Feature: About and Register
    As a user
    In order to complete the sign up process
    I want to be able to fill the fields in tell us about yourself section

 Background:
    Given the user accounts have not been created yet

Scenario: Filling the details correctly
# The fields marked with asterick are mandatory to fill
    When a user enters all the data needed as follows
    | Your name     | Age      | Gender | Email Address            | Country   | Town/City (optional) | Password | Repeat password |
    | hubert        | hubert!  | Admin  | hubert@planetexpress.com | Australia |                      | dfgdf    | dfgdf           |
    | fry           | fry!     | Host   | fry@planetexpress.com    | UK        | London               | !fghg    | !fghg           |
    And clicks on next step button 
    Then the user is taken to Email alert preference page 

Scenario: Password Validation
# Password validation rules
    
Scenario: User wants to go to previous step
    When a user wants to go to previous step, click Previous step link
    Then the user lands on previous page i.e., select skills page
