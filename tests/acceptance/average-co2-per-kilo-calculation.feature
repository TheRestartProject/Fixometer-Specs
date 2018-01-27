Feature: Average CO2 emissions per kilo

This calculation is used to estimate a CO2 emission value
for devices that have been marked with the Misc category.

This is used to assign these misc devices an estimated value
of CO2 diverted for when they have been repaired.

An average CO2 value per kilo of device is calculated by summing up,
for all of (categorised) fixed devices that have ever been entered into the
Fixometer, the CO2 emissions associated, and the weight associated.

Total CO2 emissions = sum(CO2 of all fixed, categorised devices in the Fixometer)
Total weight = sum(CO2 of all fixed, categorised devices in the Fixometer)

Estimate CO2 per kilo of device = Total CO2 / Total Weight

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


@current
Scenario: 10 categorised devices in the Fixometer, check average CO2 per kilo of misc device
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
# weight = 34.298
# co2 = 1331.18
Then the estimated CO2 per kilo of device for misc devices should be "38.8122"


@current
Scenario: 10 categorised devices and some Misc devices in the Fixometer, check average CO2 per kilo of misc device
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
| Misc                   | Fixed          |        1 |
| Misc                   | Fixed          |        2 |
| Misc                   | Fixed          |        3 |
| Misc                   | Fixed          |        4 |
# weight = 34.298
# co2 = 1331.18
# misc devices shouldn't have any bearing on the estimated CO2 per kilo
Then the estimated CO2 per kilo of device for misc devices should be "38.8122"
