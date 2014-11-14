Feature: Playing rock, paper, scissors
	In order to play a game
	As a customer
	I want to play the game

Scenario: A user goes to the homepage
	Given I am on the homepage
	And I see "Rock, Paper, Scissors "
	When I enter a name
	When I choose to play against the "Computer"
	Then I follow "Play game"

Scenario: A user sees a welcome message
	Given I am on the homepage
 	And I enter a name
 	And I choose to play against the "Computer"
 	And I follow "Play game"
 	Then I see "Welcome Mishal"

Scenario: A user picks a rock option
	Given I am on the choice page
	When I choose "Rock" button
	Then I see "The winner is"
