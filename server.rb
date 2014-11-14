require 'sinatra/base'
require_relative './lib/rock_paper_scissors'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :homepage
  end

  post '/choice' do
  	@name = params[:name]
  	erb :choice
  end  

  # get '/result' do
  # 	player_choice = params[:selected]
  # 	computer_choice = ["rock", "paper", "scissors"].sample
  # 	@winner= RockPaperScissorsGame.fight(player_choice, computer_choice)
  # 	"the winner is #{@winner}"
  # end

end

