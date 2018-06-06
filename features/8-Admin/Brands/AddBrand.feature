Feature: Add Brand
    As an admin
    In order to add a brand
    I should be able to do that by filling the fields of add brand pop-up and click on create new brand button

Scenario: Adding new brand
    When a new brand name is added, before that they should fill the field as follows
    | Brand name       | 
    | TP-Link          |                                             
    Then he/she should click on Create new brand button to save the changes.
