require 'sinatra/base'
require_relative './lib/rock_paper_scissors'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  COMPUTER_CHOICE = ["rock", "paper", "scissors"].sample

  get '/' do
  	params[:name]
    erb :homepage
  end

  post '/choice' do
  	@name = params[:name]
  	session[:name] = @name
  	erb :choice
  end  

  post '/result' do
  	@player_choice = params[:item]
 	player_name = session[:name]
 	@result = RockPaperScissorsGame.fight(@player_choice, 'rock')
 	@result = RockPaperScissorsGame.fight(@player_choice, COMPUTER_CHOICE)
 	@winner = @result == @player_choice ? player_name : 'the Computer'
 	# player_name = GAME.winner.name
  	erb :result
  end

end

#HARD CODED
#Redirect back to play again
#Redirects you to error page if no name is chosen