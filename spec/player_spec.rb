require 'player'

describe Player do

	let(:player) {Player.new("mishal")}
	
	it "should have a name" do
		expect(player.name).to eq("mishal")
	end

	it "should choose rock" do
		player.choose("rock")
		expect(player.choice).to eq("rock")
	end

	it "should choose paper" do
		player.choose("paper")
		expect(player.choice).to eq("paper")
	end

	it "should choose scissors" do
		player.choose("scissors")
		expect(player.choice).to eq("scissors")
	end

	it "should not be able to choose a random option" do
		expect{player.choose("random")}.to raise_error(RuntimeError)
	end

end