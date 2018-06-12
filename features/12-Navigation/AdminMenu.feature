Feature: View Menus
    As an admin
    In order to view all the menus
    I should be able to click on the menus on dashboard.

Background:
    Given the following account have been created as an admin
        | Email                      | Password |
        | dean@wecreatedigital.co.uk | dean     | 

Scenario: Our group and Other menus with parameters
    When a host clicks on <parameter> menu 
    Then they land on <landingpage> page.

    Examples:
    | parameter             | landingpage                                    |
    | Discussion            | http://talk.restarters.net/                    |
    | Restart Wiki          | http://therestartproject.org/wiki/Main_Page    |
    | The Repair Directory  | https://therestartproject.org/repairdirectory/ | 
    | The Restart Project   | https://therestartproject.org/                 |
    | Help                  | Will land on Help page                         |
    | Welcome               | Will land on Welcome page                      | 
    
Scenario: Administrator, Reporting and General menus with parameters
    When a host clicks on <parameter> menu 
    Then they land on <landingpage> page.

    Examples:
    | parameter        | landingpage                       |
    | Brands           | Will land on Brands page          |
    | Skills           | Will land on Skills page          |
    | Group tags       | Will land on Group tags page      | 
    | Categories       | Will land on Categories page      |
    | Users            | Will land on Users page           |
    | Roles            | Will land on Roles page           | 
    | Time reporting   | Will land on Time reporting page  |
    | Event reporting  | Will land on Event reporting page | 
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