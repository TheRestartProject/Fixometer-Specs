Feature: Edit Group Profile

As an admin
I want to edit group profiles
So that all details are correct

Given User is logged in to a group page as an Admin

Scenario: Edit Group Name
  When User edits group name field
  And presses save
  Then the new group name should appear under the Group Name heading

Scenario: Edit Group Description
  When User edits the group description box 
  And presses save
  Then the new group description should appear under the Group Description heading

Scenario: Edit Group Location
  Given the location of a group changes
  When a user edits the group location
  And presses save
  Then the new group location should appear under the Group Location heading

Scenario: Edit Group Geocode link
  When I edit the group geocode link
  Then the new geocode link should appear under the Group Geocode Link heading

Scenario: Edit Group Location on Map
  Given the location of the group changes
  When user edits group location field
  And presses save
  Then the group location on the map should update to the new location

Scenario: Save Changes to Group Profile
  Given user has made changes to one or more field on the Edit Group Profile page
  When User press save changes 
  Then all updates are saved 
  And user is returned to Group Profile

Scenario: Reset Changes to Group Profile
  Given User has made changes to one or more field on the Edit Group Profile page
  And user does not want to make these changes
  When User presses Reset Changes
  Then all updates are undone 
  And user is returned to Group Profile
  And Profile remains how it previously was


- Name
- Description
- Location
- Geocode link
- Location on map
- Group Avatar
- Reset/Save
