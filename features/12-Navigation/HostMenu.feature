Feature: View Menus
    As a Host
    In order to view all the menus
    I should be able to click on the menus on dashboard.

Background:
    Given the following account have been created as a host
        | Email                      | Password |
        | dean@wecreatedigital.co.uk | dean     | 

Scenario: Our group and Other menus with parameters
    When a host clicks on <parameter> menu 
    Then they land on <landingpage> page.

    Examples:
    | parameter             | landingpage                            |
    | Fixometer             | Will land on Fixometer page            |
    | Community             | Will land on Community page            |
    | Restart Wiki          | Will land on Restart Wiki page         | 
    | The Repair Directory  | Will land on The Repair Directory page |
    | The Restart Project   | Will land on The Restart Project page  |
    | Help                  | Will land on Help page                 |
    | Welcome               | Will land on Welcome page              | 
    
Scenario: Reporting and General menus with parameters
    When a host clicks on <parameter> menu 
    Then they land on <landingpage> page.

    Examples:
    | parameter        | landingpage                       |
    | Time reporting   | Will land on Time reporting page  |
    | Events filter    | Will land on Events filter page   | 
    | Your profile     | Will land on Your profile page    |
    | Changed pasword  | Will land on Changed pasword page |
    | Logout           | Will land on Logout page          |

Scenario: Events, Devices and Groups menus
    When a host clicks on <parameter> menu 
    Then they land on <landingpage> page.  

     Examples:
    | parameter  | landingpage                 |
    | Events     | Will land on Events page    |
    | Devices    | Will land on Devices page   |
    | Groups     | Will land on Groups page    | 