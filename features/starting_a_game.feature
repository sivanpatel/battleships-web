Feature: Starting a game
  In order to play a battleships
  As a player
  I want to start a game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"
