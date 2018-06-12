Feature: View of Dashboard after log in on the community platform
    As a Host
    In order to view the dashboard
    I should be able to login as a host on the community platform.

Background:
    Given the following account have been created as a host
        | Email                      | Password |
        | dean@wecreatedigital.co.uk | dean     | 

Scenario: View Dashboard
    When a host lands on dashboard 
    Then he would view all the activities that he can do and that is going on and that has been done on the platform.
    
Scenario: Activities present on dashboard
    When host lands on dashboard, he can view Creat new event, How to host an event, Keep your group information up to date!, Edit an existing or past event, Restarters in your area, Wiki.
    Then the host should be able to navigate(by clicking the links provided) through categories according to their use.
    