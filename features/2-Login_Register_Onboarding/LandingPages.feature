Feature: 06 Landing Pages

Different user types are taken to different default pages when they log in.

Given the following user accounts have been created
    | Email                    | Password | Role  |
    | hubert@planetexpress.com | hubert!  | Admin |
    | fry@planetexpress.com    | fry!     | Host  |

Scenario: Administrator is taken to Administrator Dashboard
# TODO: change this so its just - when an Admin logs in
    When a user logs in with email "hubert@planetexpress.com" and password "hubert!"
    Then the user is taken to the Administrator Dashboard

Scenario: Host is taken to Host Dashboard
    When a user logs in with email "fry@planetexpress.com" and password "fry!"
    Then the user is taken to the Host Dashboard
