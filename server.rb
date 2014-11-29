require 'sinatra/base'
require 'rack-flash'
require_relative './lib/rock_paper_scissors'

class RockPaperScissors < Sinatra::Base
  use Rack::Flash

  enable :sessions

  # COMPUTER_CHOICE = ["rock", "paper", "scissors"].sample

  get '/' do
  	params[:name]
    erb :homepage
  end

  post '/choice' do
    if params[:name]==""
      flash[:notice]="Please enter a name"
      redirect('/')
    else
    	@name = params[:name]
    	session[:name] = @name
    	erb :choice
    end
  end  

  post '/result' do
  	@player_choice = params[:item]
 	player_name = session[:name]
 	@result = RockPaperScissorsGame.fight(@player_choice, 'rock')
 	# @result = RockPaperScissorsGame.fight(@player_choice, COMPUTER_CHOICE)
 	@winner = @result == @player_choice ? player_name : 'the Computer'
  	erb :result
  end

end

#HARD CODED
#Redirects you to error page if no name is chosen