Feature: View of Dashboard after log in on the community platform
    As a Restarter
    In order to view the dashboard
    I should be able to login as a restarter on the community platform.

Background:
    Given the following account have been created as a restarter
        | Email                      | Password |
        | dean@wecreatedigital.co.uk | dean     | 

Scenario: View Dashboard
    When a restarter lands on dashboard 
    Then he would view all the activities that he can do and that is going on and that has been done on the platform.
    
Scenario: Activities present on dashboard
    When restarter lands on dashboard, he can view past events, upcoming events, community news, wiki, Discussion, Welcome materials
    Then the restarter should be able to navigate(by clicking the links provided) through categories according to their use.
    