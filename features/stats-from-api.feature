Feature: Homepage stats from API

@current
Scenario:
Given the following groups:
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
| Misc                   | Fixed          |        1 |
| Misc                   | Fixed          |        2 |
| Misc                   | Fixed          |        3 |
| Misc                   | Fixed          |        4 |
| Tablet                 | Repairable     |         |
| Tablet                 | Repairable     |         |
# weight = 34.298
# co2 = 1331.18
Then the stats from the API for the homepage should be:
| Hours Volunteered | Items Fixed | Ewaste Diverted |
|          24       |       14    |        44   |
