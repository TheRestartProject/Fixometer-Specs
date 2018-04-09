Feature: Edit Event

As a Host 
I want to be able to edit the event page 
So that all details are correct 

Background:
Given group host is logged in on edit event page 

Scenario: Add device
Given Host chooses to add a device on the event page
When the host enters the following required details: 
Required details
•	Category
•	Comment
•	Brand/Model
•	Repair Status
•	Spare Parts required
And submits request
Then new device is added

Scenario: Device added incorrectly
Given Host chooses to add a device on the event page
When the host enters the following required details: 
Required details
•	Category
•	Comment
•	Brand/Model
•	Repair Status
•	Spare Parts used?
And enters an incorrect value 
And submits request
Then new device is not added
And error message appears

Given a host has created an event
And there are multiple hosts of the event
When the hosts who did not create the event attempt to edit the event
Then they will be given access

