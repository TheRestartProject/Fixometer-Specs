Feature: View of Dashboard for the first time when a host sign up on the community platform
    As a Host
    In order to view the dashboard
    I should be able to signup as a host on the community platform.

Background:
    Given the following account have been created as a host
        | Email                      | Password |
        | dean@wecreatedigital.co.uk | dean     | 

Scenario: View Dashboard
# View dashboard consisting all the activities to bo done on the platform
    When a host lands on dashboard 
    Then he would view all the activities that he can do with a journey of updating your profile.
    
Scenario: About Getting started
    When host lands on dashboard, the getting started column is useful to build your profile
    Then the host can build his profile by clicking the links and following the process.
    
Scenario: Activities present on dashboard
    When host lands on dashboard, he can view Discussion, Welcome Materials, How to set up a group, Restarters in your area and Wiki categories
    Then the host should explore(by clicking the links provided) all the categories to get familiar with the platform.
    