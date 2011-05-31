Feature: add a product

  As a user
  I enter a product info
  So I can add a new product

  Scenario: Add a new product without info
    Given Im not doing nothing
    When I go to products path
    And I follow "New Product"
    And I press "Create Product"
    Then I should see "3 errors prohibited this product from being saved:"
    
    
  Scenario Outline: Add product without some fields
    Given Im not doing nothing
    When I go to products path
    And I follow "New Product"
    And I fill in "Title" with "<title>"
    And I fill in "Description" with "<description>"
    And I fill in "Image url" with "<image_url>"
    And I press "Create Product"
    Then I should not see "<error>"
    
    Scenarios: Without description and image url
      | title | description | image_url | error                |
      | ruby  |             |           | Title can't be blank |

    Scenarios: Without Title and Image Url
      | title | description         | image_url | error                      |
      |       | this is a nice book |           | Description can't be blank |

    Scenarios: Without Title and Description
      | title | description | image_url            | error                    |
      |       |             | images/ruby_book.jpg | Image url can't be blank |



  Scenario Outline: Add valid product
    Given Im not doing nothing
    When I go to products path
    And I follow "New Product"
    And I fill in "Title" with "<title>"
    And I fill in "Description" with "<description>"
    And I fill in "Image url" with "<image_url>"
    And I press "Create Product"
    Then I should see "Product was successfully created."
    And I should see "<title>"
    And I should see "<description>"
    And I should see "<image_url>"
    
    Scenarios: Without description and image url
      | title              | description  | image_url             |
      | ruby               | great book   | /images/ruby_book.jpg |
      | Pragmatic thinking | awesome book | /images/pt.jpg        |
      
    
  Scenario: Add a new product and delete it
    Given Im not doing nothing
    When I go to products path
    And I follow "New Product"
    And I fill in "Title" with "rails book"
    And I fill in "Description" with "You should buy this book"
    And I fill in "Image url" with "image/rails_book.jpg"
    And I press "Create Product"
    And I should see "Product was successfully created."
    And I follow "Back"
    And I should see "rails book"
    And I follow "Destroy"
    #Then show me the page
    #And I should see "Are you sure?"
    #And I follow "Yes"
    Then I should not see "rails book"
    


    
