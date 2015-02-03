require 'player'

describe Player do
  
  let(:player) {Player.new}

  it 'can pick rock' do
    expect(player.picks("rock")).to eq "rock"
  end

  it 'pick paper' do
    expect(player.picks("paper")).to eq "paper"
  end

  it 'an pick scissors' do
    expect(player.picks("scissors")).to eq "scissors"
  end

  it 'choice can be read' do
    player.picks("rock")
    expect(player.choice).to eq "rock"
  end

  it 'should have a default array of options' do
    expect(player.options).to eq ["rock", "paper", "scissors"]
  end

  it 'can change the options' do
    player.options = ["rock", "paper", "scissors", "lizard", "spock"]
    expect(player.options).to eq ["rock", "paper", "scissors", "lizard", "spock"]
  end

  it 'can only pick an item that is in the options array' do
    expect{player.picks("random")}.to raise_error(RuntimeError)
  end

  it 'can set a name' do
    player.name = 'Mishal'
    expect(player.name).to eq 'Mishal'
  end

end