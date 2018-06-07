Feature: Add an event
    As a User (Host, Admin)
    In order to add a new event
    I should be able to do by navigating to add an event page

Background:
    Given the following account have been created as a host or an admin
        | Email                      | Password | Role  |
        | dean@wecreatedigital.co.uk | dean     | Host  |
        | hello@howareyou.com        | hello    | Admin |

Scenario: Create a new event
# View all events i.e., past evetns, upcoming events and moderate events
    When a host clicks on event page and fills the data as follows
    | Name of event     | Event group | Description                | Date of event | Start/end time | Venue address  | Add event image  |
    | Ram               | vanarulu    | exp group in fixing things | 7/6/2018      | 20-24          | Remakery       | Add event image  |
    Then he lands on events page and can see all the events in that page.
    
Scenario: Text cleaned in the description
    When a host copies and paste into the description box
    And the data should loose all htmls and css properties it has
    Then it show a message inside description box as text cleaned.
    
Scenario: Calender pop-up on Date of event
    When a host clicks on date field, calendar should pop up 
    And select a date when to arrange party
    Then host lands on the same page and continues with next process.
    
Scenario: When clicked on start time, automatically generate 3hr+ as end time
    When a host clicks on start time, automatically from then +3hr time is calculated as follows
    | Start/end time  |
    | 13:00     16:00 |
    Then that time is stored in the end time field.

Scenario: How to find Venue adddress 
    When a host clicks on venue address, types the address
    Then automatically suggestions should show up and the place should be pointed in map.

Scenario: searching the image
#TODO: when clicked on add event image here text, dropdown opens consisting browsing options such as the picture inside system or from google drive or anyother place.
    