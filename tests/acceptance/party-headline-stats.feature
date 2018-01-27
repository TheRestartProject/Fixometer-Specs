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

# Given the following categories:
# Note: just for reference here, values already in DB for tests.
| id | name                              | weight | footprint |
| 11 | Desktop computer                  |   9.15 |     398.4 |
| 12 | Flat screen 15-17"                |    2.7 |      72.4 |
| 13 | Flat screen 19-20"                |   3.72 |    102.93 |
| 14 | Flat screen 22-24"                |      5 |     167.8 |
| 15 | Laptop large                      |  2.755 |    322.79 |
| 16 | Laptop medium                     |   2.26 |    258.25 |
| 17 | Laptop small                      |   2.14 |    142.18 |
| 18 | Paper shredder                    |      7 |      47.7 |
| 19 | PC Accessory                      |  1.185 |     18.87 |
| 20 | Printer/scanner                   |   7.05 |      47.7 |
| 21 | Digital Compact Camera            |  0.113 |      6.13 |
| 22 | DLSR / Video Camera               |   0.27 |      4.05 |
| 23 | Handheld entertainment device     |  0.149 |        13 |
| 24 | Headphones                        |   0.26 |      4.05 |
| 25 | Mobile                            |   0.14 |     35.82 |
| 26 | Tablet                            |   0.51 |    107.76 |
| 27 | Flat screen 26-30"                |   10.6 |    284.25 |
| 28 | Flat screen 32-37"                |   18.7 |     359.4 |
| 29 | Hi-Fi integrated                  |   10.9 |     109.5 |
| 30 | Hi-Fi separates                   |   10.9 |     109.5 |
| 31 | Musical instrument                |   10.9 |     109.5 |
| 32 | Portable radio                    |    2.5 |        66 |
| 33 | Projector                         |   2.35 |        46 |
| 34 | TV and gaming-related accessories |      1 |        25 |
| 35 | Aircon/Dehumidifier               |   18.5 |    109.53 |
| 36 | Decorative or safety lights       |  0.015 |     13.43 |
| 37 | Fan                               |   0.88 |      4.52 |
| 38 | Hair & Beauty item                |   0.69 |         6 |
| 39 | Kettle                            |    1.4 |      17.1 |
| 40 | Lamp                              |  0.703 |      4.62 |
| 41 | Power tool                        |   2.84 |      26.6 |
| 42 | Small kitchen item                |    2.7 |      15.8 |
| 43 | Toaster                           |   1.04 |         5 |
| 44 | Toy                               |   1.27 |        15 |
| 45 | Vacuum                            |   7.78 |        41 |
| 46 | Misc                              |      1 |      NULL |
 

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


@current
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
# categorised device emissions = 1331.18
# waste/emission ratio = 38.8122
# misc emissions = 38.8122*4 (misc device is 4kg) = 155.2488
# (1331.18 + 155.2488) * 0.5 = 743.2144
Then the CO2 diverted should be "743" 
And the ewaste diverted should be "38"
