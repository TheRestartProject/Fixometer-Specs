Feature: Active and past events   
   As a restarter   
   In order to see and edit the particular event details   
   I should be able to navigate to that paarticular event page.

Background:   
   Given the following account have been created a restarter       
   | Email                      | Password |       
   | dean@wecreatedigital.co.uk | dean     | 

Scenario: View active/past events
#  View active/past events i.e., past evetns, upcoming events and moderate events   
   When a restarter clicks on particular event page
   And likes to view environmental impact, attendees, event details etc., 
   Then he can see on that particular event page.

Scenario: Edit devices section  
#Restarter can only edit a device but cannot add or delete a device from the device section 
   When a restarter wants to edit devices section
   And should click on edit option
   Then he can view editable options of that device
   And save the changes by clicking on save button.   
 
Scenario: Veiw the attended volunteers   
   When a restarter wants to view the volunteers who have attended that event
   Then he can view in attendace section of the event page.

Scenario: View the invited volunteers   
   When a restarter wants to view the number of volunteers invited to the event    
   Then restarter can see in invited tab.    

Scenario: View device details   
   When a restarter wants to view the devices that hase been fixed, repairable and end of life
   Then can see the list in the devices section
   
