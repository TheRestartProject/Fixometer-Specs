Feature: Add venue details

As a user 
I want to be able to add venue details 
So that people are aware of the venue details
And the venue can be added to the map

Scenario: Add venue details
Given admin user is signed in on add venue details page
When the user fills in the Address and Geocode fields
And presses save
Then the venue details will be added to the event

Scenario: Add venue details incorrectly
Given admin user is signed in on add venue details page
When the user fills in the Address and Geocode fields 
And enters an invalid Geocode
And presses save
Then the venue details will not be added
And an error message will appear

Scenario: Add venue details incorrectly
Given admin user is signed in on add venue details page
When the user fills in the Address and Geocode fields 
And enters an invalid Address
And presses save
Then the venue details will not be added
And an error message will appear

# Users can add the name and address of the venue where the party
# is taking place.

# The venue location is geocoded and pin-pointed on a map in order
# to display to visitors to the front-facing website later on.

# ![](./venue-details.png)

# Notes: we used to only have one field, named 'Location', into which the
# user would input the address, geocode, and then had to go back and
# update the field to a more publicly dislpayable name (the venue name, essentially.)
# Users found this confusing so we split it out into two fields.  
# Venue Name is the field that displays on therestartproject.org homepage
# and related events pages.

# ![](./venue-details-old-way.png)
