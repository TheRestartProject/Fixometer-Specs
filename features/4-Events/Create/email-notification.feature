
Feature: Notification when new parties are created


  In order to keep track of new parties and their details

  As an admin

  I want to get an email notification from the application when a party is created by a host

Scenario: Host creates new party

  Given the following users:

  | name | email                      | role          |

  | Lisa | lisa@therestartproject.org | Administrator |

  | Bart | bart@therestartproject.org | Host          |

  When Bart creates a new party 
  Then Lisa should see receive an email notification with the details of the new party

Scenario: Admin should not be sent an email

Scenario: Admin creates new party