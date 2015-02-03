require 'player'

describe Player do
  
  let(:player) {Player.new}

  it 'a player can pick rock' do
    expect(player.picks("rock")).to eq "rock"
  end

  it 'a player can pick paper' do
    expect(player.picks("paper")).to eq "paper"
  end

  it 'a player can pick scissors' do
    expect(player.picks("scissors")).to eq "scissors"
  end

  it 'a players choice can be read' do
    player.picks("rock")
    expect(player.choice).to eq "rock"
  end

end