Feature: Show a list of the files in the app root directory

  As a user
  I enter the file path
  So I can see the root files

  Scenario:
    Given Im not doing anything
    When I am on file path
    Then I should see "file name is:"
    
