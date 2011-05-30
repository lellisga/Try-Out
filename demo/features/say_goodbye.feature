Feature: demo shows goodbye
  
  As user
  I want to exit the app
  So app should show a Goodbye message

  Scenario: show goodbye message
    Given Im not doing anything
    When I visit the say/goodbye path
    Then I should see "Goodbye!"
    
