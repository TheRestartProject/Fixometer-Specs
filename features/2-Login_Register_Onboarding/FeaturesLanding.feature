Feature: Find out more
    As a user
    In order to find out more about the site
    I want to be able to click on the link given and land on features landing page

Background:
    Given the user accounts has not been created yet
        
Scenario: Sign me up
    When a user lands on features landing page, finds images about community, signup button and link to Register/sign in
    And user clicks on either signup button or link to Register/sign in
    Then they will land on select skills page 