require 'sinatra/base'
require 'rack-flash'
require_relative './lib/player.rb'
require_relative './lib/rock_paper_scissors'
require_relative './lib/computer'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  use Rack::Flash

  GAME = RockPaperScissorsGame.new

  get '/' do
  	params[:name]
    erb :homepage
  end

  post '/game' do
    if params[:name]==""
      flash[:notice]="Please enter a name!"
      redirect('/')
    end
    params[:Opponent]=="Computer" ? @game = :single_player : @game = :two_player
    
  end  

  # get '/computerchoice' do
  #   player = Player.new(session[:name])
  #   computer = Computer.new
  #   GAME.add_player(player)
  #   GAME.add_player(computer)
  #   @name = session[:name]
  #   erb :choice
  # end

  # get '/playerschoice' do
  #   player = Player.new(session[:name])
  #   GAME.add_player(player)
  #   session[:me]=player.object_id
  #   @player_count= GAME.players.count
  #   # if @player_count !=2
  #     erb :waitingpage
  #   # else

  #   # end
  # end

  # post '/result' do
  #   @player_choice = params[:item]
  #   @result = GAME.play(@player_choice, 'rock')
  #   @winner = @result == @player_choice ? session[:name] : 'the Computer'
  #   erb :result
  # end

end

#HARD CODED
#Game class
# -has only two players
# -decides on a winner
#Player class
# -has a name
# -chooses an option
#Rules
#
# <form action="/twoplayergame" method="get">
#   <input value="refresh" type="submit">
# </form>