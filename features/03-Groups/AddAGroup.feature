Feature: Add a group
    As a User (Host, Admin)
    In order to add a new group
    I should be able to do by navigating to add group page

Background:
    Given the following account have been created as a host or an admin
        | Email                      | Password | Role  |
        | dean@wecreatedigital.co.uk | dean     | Host  |
        | hello@howareyou.com        | hello    | Admin |

Scenario: Create a new group
    When a host clicks on add a group page and fills the data as follows
    | Name of group     | Your website                     | Tell us about your group      | Group location | Group image  |
    | Mighty Restarters | https://mightyrestarters.co.uk   | expert group in fixing things | Southwark      | :)           |
    And clicks on create group button to create a new group
    Then he lands on group page with the newly created group in the list of gropus in that page.
    
Scenario: Text cleaned in the description
    When a host copies and paste into the description box
    And the data should loose all htmls and css properties it has
    Then it show a message inside description box as text cleaned.

Scenario: How to give group location 
    When a host clicks on group location, types the address
    Then automatically suggestions should show up and the place should be pointed in map.

Scenario: searching the image
#TODO: when clicked on add group image here text, dropdown opens consisting browsing options such as the picture inside system or from google drive or anyother place.
    