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
    erb :homepage
  end

  post '/game' do
    if params[:name]==""
      flash[:notice]="Please enter a name!"
      redirect('/')
    else
      session[:name] = params[:name]
      params[:Opponent]=="Computer" ? @opponent = 'single_player' : @opponent= 'two_player'
      redirect("/#{@opponent}")
    end
  end  

  get '/single_player' do
    @name = session[:name]
    session[:player1]= Player.new(session[:name])
    computer = Computer.new
    # computer.choose
    computer.choice = 'rock'
    GAME.add_player(computer)
    erb :choice
  end

  get '/two_player' do
    player = session[:player1] = Player.new(session[:name])
    GAME.add_player(player)
    @player_count= GAME.players.count
    if @player_count !=2
      erb :waitingpage
    else
      erb :choice
  end

  post '/result' do
    # @player_count= GAME.players.count
    # if @player_count !=2
    #   erb :waitingpage
    # else
      session[:player1].choose(params[:item])
      GAME.add_player(session[:player1])
      @result = GAME.play
      @winner = GAME.winner
      erb :result
    # end
  end

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