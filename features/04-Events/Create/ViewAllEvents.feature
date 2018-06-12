Feature: View All Events
    As a User (All roles)
    In order to view all the events
    I should be able to do go to all events page

Background:
    Given the following account have been created as an host
        | Email                      | Password |
        | dean@wecreatedigital.co.uk | dean     | 

Scenario: View all events
# View all events i.e., past evetns, upcoming events and moderate events
    When a host clicks on event page
    Then he lands on events page and can see all the events in that page.
    
Scenario: Create new event
    When a host wants to create a new event, should click on create new event button
    Then add an event page opens.
    
Scenario: To access group details 
    When a host wants  to access/check the group details
    And clicks on the  group name link
    Then host lands on that particular group page.
    
Scenario: Add a device
    When a host wants to enter device(s) data into a group, click on add a device link
    Then lands on the patrticular group page and enter the data.

Scenario: To RSVP
    When a host wants to respond to the invite, click on the link RSVP
    Then lands on that patrticular page.