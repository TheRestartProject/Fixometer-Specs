Feature: Create events

As a user 
I want to be able to create an event
So that it exists on the Fixometer
And people know about it

Scenario: Create event
Given an admin is signed in on the create event page
When the user fills in the event details
And presses Add Event
Then the event will be created

Scenario: Add volunteer



Notes: In the absence of the Restarter role functionality being
in place, new events are currently created with a default
volunteer.
