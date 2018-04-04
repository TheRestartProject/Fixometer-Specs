Feature: User types

Background
As an Admin 
I want to have access to all admin only features 
So that I am able to control accounts and features

Scenario: Admin access
Given Admin user is signed in 
When User tries to access admin only features
Then user will be given access

Scenario: Admin tries to make changes
Given an admin user is signed in
When user tries to make changes to admin only features
Then changes will be granted

Scenario: Admin access by non admin
Given a non admin user is signed in
When user attempts to access admin only features
Then user will be denied access
And an error message will appear to inform user that only admins can access this feature

Scenario: Non admin tries to make changes
Given a non admin user is signed in
When user attempts to make changes to admin only features
Then user will be denied access
And an error message will appear to inform user that only admins can access this feature

Background
As a host
I want to be able to create events and edit information recorded at events
So that event details are kept up to date and accurate 

Scenario: Host creating events
Given a user is signed in as a host
When user attempts to create an event
Then they will be taken to the create event page

Scenario: Non Host creating events
Given a user is signed in and is not a host or admin
When the user attempts to create an event
Then they will not be taken to the create event page
And an error message will inform them that only hosts and admin have access

Scenario: Host editing event information
Given a user is signed in as a host
When the user attempts to go to the edit event information page
Then they will be taken to the edit event information page

Scenario: Non host editing event information
Given a user is signed in and is not a host or admin
When the user attempts to go to the edit information page
Then they will not be taken to the edit information page
And an error message will inform them that they do not have access to this page



