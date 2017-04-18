Feature: 06 Landing Pages

Different user types are taken to different default pages when they log in.

Given the following user account has been created
    | Email                    | Password |
    | hubert@planetexpress.com | hubert!  |

Scenario: Administrator is taken to Administrator Dashboard
    When a user logs in with email "hubert@planetexpress.com" and password "hubert!"
    Then the user is taken to the Administrator Dashboard
