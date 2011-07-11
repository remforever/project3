@news_points
Feature: News Points
  In order to have news_points on my website
  As an administrator
  I want to manage news_points

  Background:
    Given I am a logged in refinery user
    And I have no news_points

  @news_points-list @list
  Scenario: News Points List
   Given I have news_points titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of news_points
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @news_points-valid @valid
  Scenario: Create Valid News Point
    When I go to the list of news_points
    And I follow "Add New News Point"
    And I fill in "Title" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 news_point

  @news_points-invalid @invalid
  Scenario: Create Invalid News Point (without title)
    When I go to the list of news_points
    And I follow "Add New News Point"
    And I press "Save"
    Then I should see "Title can't be blank"
    And I should have 0 news_points

  @news_points-edit @edit
  Scenario: Edit Existing News Point
    Given I have news_points titled "A title"
    When I go to the list of news_points
    And I follow "Edit this news_point" within ".actions"
    Then I fill in "Title" with "A different title"
    And I press "Save"
    Then I should see "'A different title' was successfully updated."
    And I should be on the list of news_points
    And I should not see "A title"

  @news_points-duplicate @duplicate
  Scenario: Create Duplicate News Point
    Given I only have news_points titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of news_points
    And I follow "Add New News Point"
    And I fill in "Title" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 news_points

  @news_points-delete @delete
  Scenario: Delete News Point
    Given I only have news_points titled UniqueTitleOne
    When I go to the list of news_points
    And I follow "Remove this news point forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 news_points
 