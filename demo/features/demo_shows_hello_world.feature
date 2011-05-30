Feature: demo shows Hello World

  As a demo app
  I want to show a message
  So app can show Hello World

  Scenario: show message
    Given Im not doing anything
    When I visit the say/hello path
    Then I should see "Hello World!"
    And I should see "Hello, Rails"
    
  Scenario: show message with web_step
    Given Im not doing anything
    When I am on hello path
    Then I should see "Hello World!"

  Scenario: go to Goodbye template
    Given I am on hello path
    When I follow "Goodbye!"
    Then I should see "Goodbye!"
