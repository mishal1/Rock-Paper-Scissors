require 'rps'

describe RockPaperScissors do

  let(:game)    {RockPaperScissors.new}
  let(:player1) {double :player, choice: "rock", name: "mishal"}
  let(:player2) {double :player, choice: "scissors", name: "computer"}
  let(:player3) {double :player, choice: "scissors", name: "mishal"}
  let(:player4) {double :player, choice: "rock", name: "computer"}

  it 'should have no players when initialized' do
    expect(game.players).to eq []
  end

  it 'can add a player to the game' do
    game.add_player(player1)
    expect(game.players).to eq [player1]
  end

  it 'cannot have more than two players in a game' do
    3.times {game.add_player(player1)}
    expect(game.players.count).to eq 2
  end

  it 'has a default set of rules' do
    expect(game.rules).to eq({rock: :paper, paper: :scissors, scissors: :rock})
  end

  it 'the rules of the game can be changed' do
    game.rules = {rock: :paper, paper: :scissors}
    expect(game.rules).to eq({rock: :paper, paper: :scissors})
  end

  it 'player 1 wins' do
    game.add_player(player1)
    game.add_player(player2)
    expect(game.declare_winner).to eq "computer"
  end

  it 'player 2 wins' do
    game.add_player(player3)
    game.add_player(player4)
    expect(game.declare_winner).to eq "mishal"
  end

end

# GAME
# -a winner is declared