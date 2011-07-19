@bets
Feature: Bets
  In order to have bets on my website
  As an administrator
  I want to manage bets

  Background:
    Given I am a logged in refinery user
    And I have no bets

  @bets-list @list
  Scenario: Bets List
   Given I have bets titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of bets
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @bets-valid @valid
  Scenario: Create Valid Bet
    When I go to the list of bets
    And I follow "Add New Bet"
    And I fill in "Result" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 bet

  @bets-invalid @invalid
  Scenario: Create Invalid Bet (without result)
    When I go to the list of bets
    And I follow "Add New Bet"
    And I press "Save"
    Then I should see "Result can't be blank"
    And I should have 0 bets

  @bets-edit @edit
  Scenario: Edit Existing Bet
    Given I have bets titled "A result"
    When I go to the list of bets
    And I follow "Edit this bet" within ".actions"
    Then I fill in "Result" with "A different result"
    And I press "Save"
    Then I should see "'A different result' was successfully updated."
    And I should be on the list of bets
    And I should not see "A result"

  @bets-duplicate @duplicate
  Scenario: Create Duplicate Bet
    Given I only have bets titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of bets
    And I follow "Add New Bet"
    And I fill in "Result" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 bets

  @bets-delete @delete
  Scenario: Delete Bet
    Given I only have bets titled UniqueTitleOne
    When I go to the list of bets
    And I follow "Remove this bet forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 bets
 