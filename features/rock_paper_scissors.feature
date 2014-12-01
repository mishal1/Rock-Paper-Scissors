Feature: Playing rock, paper, scissors
	In order to play a game
	As a customer
	I want to play the game

Scenario: A user goes to the homepage
	Given I am on the homepage
	And I see "Rock, Paper, Scissors"
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
	When I have set up a game
	Then I choose the "rock" button

Scenario: A user picks a paper option
	When I have set up a game
	Then I choose the "paper" button

Scenario: A user picks a scissor option
	When I have set up a game
	Then I choose the "scissor" button
	

Scenario: A user wins the game
	When I have set up a game
	Then I choose the "paper" button
	Then I see "The winner is Mishal, with paper"

Scenario: A user loses the game
	When I have set up a game
	Then I choose the "scissor" button
	Then I see "The winner is the Computer, with rock"

Scenario: A user draws
	When I have set up a game
	Then I choose the "rock" button
	Then I see "It was a draw"
	Then I choose the "Play again" button
	Then I am on the homepage
	
Scenario: There is an error message if the user doesn't enter their name
	Given I am on the homepage
	And I choose to play against the "Computer"
	And I follow "Play game"
	Then I see "Please enter a name" 

Scenario: Another player can play the game
	Given I am on the homepage
	And I enter a name
	And I choose to play against the "Another player"
	Then I follow "Play game"
	Then I see "Waiting for second player"

