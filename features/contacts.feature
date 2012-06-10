Feature: Contacts Feature
	In order to keep track of my tenants, friends, investors and managers
	As a registered user
	I want to add, edit and view contacts.

  Background: The user is logged in
    Given a logged in user

  Scenario: user adds a new contact to their contact list
    Given a Contact with a "name", "phone number", "address", and "work information"
    When a user enters the contact information
    Then the new contact will be entered into the users contact list
    
