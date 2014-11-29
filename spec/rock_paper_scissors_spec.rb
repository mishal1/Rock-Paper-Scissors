require 'rock_paper_scissors'
describe RockPaperScissorsGame do

	let(:game) 	 {RockPaperScissorsGame.new}
	let(:player) {double :player}

	it "knows rock beats scissors" do
		expect(game.fight("rock", "scissors")).to eq "rock"
	end

	it "knows paper beats rock" do
		expect(game.fight("paper", "rock")).to eq "paper"
	end

	it "knows there is a draw" do
		expect(game.fight("rock","rock")).to eq "draw"
	end	
	
	it "has no players when initialize" do
		expect(game.players).to eq([])
	end

	it "can have a player" do
		game.add_player(player)
		expect(game.players).to eq([player])
	end

	it "can't have more than two players" do
		3.times{game.add_player(player)}
		expect(game.players.count).to eq(2)
	end

	it "game cannot start if there aren't enough players" do 
		game.add_player(player)
		expect(game.started?).to be(false)
	end

	it "can only start if there are two players" do
		2.times{game.add_player(player)}
		expect(game.started?).to be(true)
	end
	
end