require 'rock_paper_scissors'
describe RockPaperScissorsGame do

	let(:game) 	  {RockPaperScissorsGame.new}
	let(:player1) {double :player, :choice=>"rock", :name=>"claudia"}
	let(:player2) {double :player, :choice=>"paper", :name=>"mishal"}
	let(:player3) {double :player, :choice=>"scissors"}	
	
	def add_players(player1, player2)
		game.add_player(player1)
		game.add_player(player2)
	end

	it "has no players when initialize" do
		expect(game.players).to eq([])
	end

	it "can have a player" do
		game.add_player(player1)
		expect(game.players).to eq([player1])
	end

	it "can't have more than two players" do
		3.times{game.add_player(player1)}
		expect(game.players.count).to eq(2)
	end

	it "knows rock beats scissors" do
		add_players(player1, player3)
		expect(game.play).to eq "rock"
	end

	it "knows paper beats rock" do
		add_players(player1, player2)
		expect(game.play).to eq "paper"
	end

	it "knows scissors beats paper" do
		add_players(player2, player3)
		expect(game.play).to eq "scissors"
	end

	it "knows there is a draw" do
		add_players(player1, player1)
		expect(game.play).to eq "draw"
	end

	it "declares a winner" do
		add_players(player1, player2)
		game.play
		expect(game.winner).to eq "mishal"
	end
	
end