Feature: Stats on list of parties

We display here: participants, Restarters, CO2 prevented, devices fixed, repairable and dead.
TODO: why no ewaste figure here?

Background:
Given the following user accounts have been created
| Name | Email                 | Password | Role |   
| Hubert | hubert@planetexpress.com | pr0f! | Administrator |
And the following groups:
| id | name    |
|  1 | Restart |
And the following events:
| id | venue   | group   | participants | volunteers |
|  1 | Tooting | Restart | 10 | 5 |
And the following devices at the "Tooting" event:
| Category               | Repair Outcome | Estimate |
| Desktop computer       | Fixed          |          |
| Flat screen 15-17"     | Fixed          |          |
| Laptop large           | Fixed          |          |
| Laptop medium          | Fixed          |          |
| Paper shredder         | Fixed          |          |
| Printer/scanner        | Fixed          |          |
| Digital Compact Camera | Fixed          |          |
| Headphones             | Fixed          |          |
| Tablet                 | Fixed          |          |
| Portable radio         | Fixed          |          |
| Misc                   | Fixed          |        4 |
| Tablet                 | Repairable     |          |

@current
Scenario: Admin Dashboard shows individual party stats correctly
Given "Hubert" has logged in with email "hubert@planetexpress.com" and password "pr0f!"
When "Hubert" views their Admin Dashboard
Then the stats in the party list for the "Tooting" party are:
| Participants | Restarters | CO2 | Fixed | Repairable | End-of-life |
|           10 |          5 | 743 |    11 |          1 |           0 |
