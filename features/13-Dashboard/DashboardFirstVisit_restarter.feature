Feature: View of Dashboard for the first time when a restarter sign up on the community platform
    As a Restarter
    In order to view the dashboard
    I should be able to signup as a restarter on the community platform.

Background:
    Given the following account have been created as a restarter
        | Email                      | Password |
        | dean@wecreatedigital.co.uk | dean     | 

Scenario: View Dashboard
# View dashboard consisting all the activities to bo done on the platform
    When a restarter lands on dashboard 
    Then he would view all the activities that he can do with a journey of updating your profile.
    
Scenario: About Getting started
    When restarter lands on dashboard, the getting started column is useful to build your profile
    Then the restarter can build his profile by clicking the links and following the process.
    
Scenario: Activities present on dashboard
    When restarter lands on dashboard, he can view Welcome Materials, Discussion, Upoming events and Wiki categories
    Then the restarter should explore(by clicking the links provided) all the categories to get familiar with the platform.
    