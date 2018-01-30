Feature: Total Headline Stats

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
|  2 | Camden | Restart | 15 | 6 |
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
| Tablet                 | Repairable     |         |
And the following devices at the "Camden" event:
| Category               | Repair Outcome | Estimate |
| Misc                   | Fixed          |        1 |
| Misc                   | Fixed          |        2 |
| Misc                   | Fixed          |        3 |
| Misc                   | Fixed          |        4 |
| Tablet                 | Repairable     |         |


@current
Scenario: Admin Dashboard shows total headline stats correctly
Given "Hubert" has logged in with email "hubert@planetexpress.com" and password "pr0f!"
When "Hubert" views their Admin Dashboard
Then the total headline stats are:
# weight = 34.298 + 10 from the miscs
# co2 = 666 + 194 = 860
| Participants | Hours Volunteered | Parties Thrown | Waste Prevented | CO2 Emission Prevented |
|           25 |                51 |            2 |               44 |                      860 |
