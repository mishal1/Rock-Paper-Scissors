require 'rock_paper_scissors'
describe RockPaperScissorsGame do

	it "knows rock beats scissors" do
		expect(RockPaperScissorsGame.fight("rock", "scissors")).to eq "rock"
	end

	it "knows paper beats rock" do
		expect(RockPaperScissorsGame.fight("paper", "rock")).to eq "paper"
	end

	it "knows there is a draw" do
		expect(RockPaperScissorsGame.fight("rock","rock")).to eq "draw"
	end
	
end