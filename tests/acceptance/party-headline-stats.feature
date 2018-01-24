Feature: Party headline stats

For categorised devices, ewaste diverted is simply the sum of weights
for fixed devices.  CO2 diverted is the sum of the pre-use CO2 for each
devices category, multipled by the displacement rate.

TODO... misc devices
TODO... define what rounding etc is applied for display

  
TODO: for now, using category weight/CO2 values as defined in DB.

Mobile category has weight 0.14 and pre-use CO2 35.82.
Printer/scanner category has weight 7.05 and pre-use CO2 47.7.
Displacement rate is fixed at 0.5

The waste emission ratio is basically figuring out what the
average amount of CO2 emissions is, based on all of the fixed 
(non-misc) devices that we have ever seen.
 

Scenario: one categorised device fixed at an event
Given the following groups:
| id | name    |
|  1 | Restart |
And the following events:
| id | venue   | group   |
|  1 | Tooting | Restart |
And the following devices at the "Tooting" event:
| Category        | Repair Outcome |
| Printer/scanner | Fixed          |
When I view the headline stats for the "Tooting" event
# 47.7 * 0.5 and rounded 
Then the CO2 diverted should be "24" 
# 7.05 rounded
And the ewaste diverted should be "7"


# Mobile category has weight 0.14 and pre-use CO2 35.82.
Scenario: 10 mobiles fixed at an event
Given the following groups:
| id | name    |
|  1 | restart |
And the following events:
| id | venue   | group   |
|  1 | Tooting | Restart |
And the following devices at the "Tooting" event:
| Category | Repair Outcome |
| Mobile   | Fixed          |
| Mobile   | Fixed          |
| Mobile   | Fixed          |
| Mobile   | Fixed          |
| Mobile   | Fixed          |
| Mobile   | Fixed          |
| Mobile   | Fixed          |
| Mobile   | Fixed          |
| Mobile   | Fixed          |
| Mobile   | Fixed          |
When I view the headline stats for the "Tooting" event
# (35.82*10) / 2 and rounded up
Then the CO2 diverted should be "179" 
# 1.4 rounded
And the ewaste diverted should be "1"


Scenario: 10 various devices fixed at an event
Given the following groups:
| id | name    |
|  1 | Restart |
And the following events:
| id | venue   | group   |
|  1 | Tooting | Restart |
And the following devices at the "Tooting" event:
| Category               | Repair Outcome |
| Desktop computer       | Fixed          |
| Flat screen 15-17"     | Fixed          |
| Laptop large           | Fixed          |
| Laptop medium          | Fixed          |
| Paper shredder         | Fixed          |
| Printer/scanner        | Fixed          |
| Digital Compact Camera | Fixed          |
| Headphones             | Fixed          |
| Tablet                 | Fixed          |
| Portable radio         | Fixed          |
When I view the headline stats for the "Tooting" event
# 1331.18 / 2 and rounded
Then the CO2 diverted should be "666" 
# 34.298 rounded
And the ewaste diverted should be "34"


Scenario: Misc device fixed at an event
Given the following groups:
| id | name    |
|  1 | Restart |
And the following events:
| id | venue   | group   |
|  1 | Tooting | Restart |
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
When I view the headline stats for the "Tooting" event
# categorised device emissions = 1331.18 * 0.5 = 665.59 = 666
# waste/emission ratio = 19.0286
# misc emissions = 19.0286*4 (misc device is 4kg)
#Then the CO2 diverted should be "742" 
Then the ewaste diverted should be "38"
