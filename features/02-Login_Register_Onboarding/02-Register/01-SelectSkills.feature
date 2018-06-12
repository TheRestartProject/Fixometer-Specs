Feature: 01 Selecting skills
    As a user
    In order to complete the sign up process
    I want to be able to select the options in skills section

Background:
    Given the user accounts have not been created yet

Scenario: Valid Selection
# User can just simply click next button if they don't have any repair skill 
    When a user does not select any option or selects atleast one option from the repair skills 
    And click on Next step button
    Then the user lands on About and Register page
