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
| idgroups | name    |
|        1 | restart |
And the following events:
| idevents | venue   | group |
|        1 | Tooting |     1 |
And the following devices at the "1" event:
| category_id | Category        | Repair Outcome |
|          20 | Printer/scanner |              1 |
When I view the headline stats for the "1" event
# 47.7 / 2 and rounded 
Then the CO2 diverted should be "24" 
# 7.05 rounded
And the ewaste diverted should be "7"


# Mobile category has weight 0.14 and pre-use CO2 35.82.
Scenario: 10 mobiles fixed at an event
Given the following groups:
| idgroups | name |
|  1       | restart |
And the following events:
| idevents | venue   | group |
|        1   | Tooting | 1 |
And the following devices at the "1" event:
| category_id | Category | Repair Outcome |
|          25 | Mobile   |              1 |
|          25 | Mobile   |              1 |
|          25 | Mobile   |              1 |
|          25 | Mobile   |              1 |
|          25 | Mobile   |              1 |
|          25 | Mobile   |              1 |
|          25 | Mobile   |              1 |
|          25 | Mobile   |              1 |
|          25 | Mobile   |              1 |
|          25 | Mobile   |              1 |
When I view the headline stats for the "1" event
# (35.82*10) / 2 and rounded up
Then the CO2 diverted should be "179" 
# 1.4 rounded
And the ewaste diverted should be "1"


Scenario: 10 various devices fixed at an event
Given the following groups:
| idgroups | name |
|  1       | restart |
And the following events:
| idevents | venue   | group |
|        1   | Tooting | 1 |
And the following devices at the "1" event:
| category_id | Category               | Repair Outcome |
|          11 | Desktop computer       |              1 |
|          12 | Flat screen 15-17      |              1 |
|          15 | Laptop large           |              1 |
|          16 | Laptop medium          |              1 |
|          18 | Paper shredder         |              1 |
|          20 | Printer/scanner        |              1 |
|          21 | Digital Compact Camera |              1 |
|          24 | Headphones             |              1 |
|          26 | Tablet                 |              1 |
|          32 | Portable radio         |              1 |
When I view the headline stats for the "1" event
# 1331.18 / 2 and rounded
Then the CO2 diverted should be "666" 
# 34.298 rounded
And the ewaste diverted should be "34"


@current
Scenario: one Misc device fixed at an event
Given the following groups:
| idgroups | name |
|  1       | restart |
And the following events:
| idevents | venue   | group |
|        1   | Tooting | 1 |
And the following devices at the "1" event:
| category_id | Category               | Repair Outcome | Estimate |
|          11 | Desktop computer       |              1 |          |
|          12 | Flat screen 15-17      |              1 |          |
|          15 | Laptop large           |              1 |          |
|          16 | Laptop medium          |              1 |          |
|          18 | Paper shredder         |              1 |          |
|          20 | Printer/scanner        |              1 |          |
|          21 | Digital Compact Camera |              1 |          |
|          24 | Headphones             |              1 |          |
|          26 | Tablet                 |              1 |          |
|          32 | Portable radio         |              1 |          |
|          46 | Misc                   |              1 |        4 |
When I view the headline stats for the "1" event
# categorised device emissions = 1331.18 * 0.5 = 665.59 = 666
# waste/emission ratio = 19.0286
# misc emissions = 19.0286*4 (misc device is 4kg)
Then the CO2 diverted should be "742" 
And the ewaste diverted should be "34"
