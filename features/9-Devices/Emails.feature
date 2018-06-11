Feature: Emails that are sent out by the system
   As a user (all roles)  
   In order to organise the platform   
   I should be able to send automated/manual emails to users whenever required.

Background:   
   Given the following account have been created an admin     
   | Email                      | Password |       
   | dean@wecreatedigital.co.uk | dean     |

Scenario: Post event automated reminder email to host (4)
   Given a host has received a post event automated email
   When the host clicks on Contribute data button
   Then the host lands on that manage event page.

Scenario: Post event reminder email to volunteers (5)
   Given a volunteer has received a post event device reminder email
   When the volunteer clicks on Contribute data button
   Then the volunteer land on that manage event page.