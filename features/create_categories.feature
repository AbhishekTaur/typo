Feature: Create categories
  As an blog administrator
  In order to share my thoughts to the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
   Scenario: Successfully Create categories
    Given I am on the new categories page
    When I fill in "category_name" with "Sports"
    And I fill in "category_keywords" with "Indoor"
    And I fill in "category_permalink" with "no"
    And I fill in "category_description" with "It is a Sport Category"
    And I press "Save"
    Then I should see "Sports"
    Then I should see "Indoor"
    Then I should see "no"
    Then I should see "It is a Sport Category"
     Then I follow "Sports"
    When I fill in "category_name" with "Adventure Sports"
    And I fill in "category_keywords" with "Adventure"
    And I fill in "category_permalink" with "outdoor"
    And I fill in "category_description" with "It is Adventure Sport Category"
    And I press "Save"
    Then I should see "Adventure Sports"
    Then I should see "Adventure"
    Then I should see "outdoor"
    Then I should see "It is Adventure Sport Category"