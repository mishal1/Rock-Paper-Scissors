require 'computer'

describe Computer do
  
  let(:computer) {Computer.new}
  possible_computer_choice = Proc.new {|choice| ["rock", "paper", "scissors"].include?(choice)}

  it 'should have a default array of options' do
    expect(computer.options).to eq ["rock" , "paper", "scissors"]
  end

  it 'should be able to change the computer options' do
    computer.options = ["rock", "paper", "scissors", "lizard", "spock"]
  end

  it 'should randomly pick a choice' do
    expect(computer.pick).to satisfy{possible_computer_choice}
  end

  it 'should be able to read computers choice' do
    computer.pick
    expect(computer.choice).to satisfy{possible_computer_choice}
  end

  it 'should be able to read a name' do
    expect(computer.name).to eq 'robot'
  end

end