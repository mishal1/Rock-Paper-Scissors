require 'sinatra/base'
require 'rack-flash'
require_relative './lib/rock_paper_scissors'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  use Rack::Flash

  get '/' do
  	params[:name]
    erb :homepage
  end

  post '/choice' do
    if params[:name]==""
      flash[:notice]="Please enter a name!"
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
   	@winner = @result == @player_choice ? player_name : 'the Computer'
   	# player_name = GAME.winner.name
  	erb :result
  end

end

#HARD CODED
#Redirects you to error page if no name is chosen
#Game class
# -has only two players
# -decides on a winner
#Player class
# -has a name
# -chooses an option
#Rules
#