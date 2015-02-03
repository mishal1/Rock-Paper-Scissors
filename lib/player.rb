class Player

  attr_accessor :options, :name
  attr_reader :choice

  def initialize
    @options = ["rock", "paper", "scissors"]
  end

  def picks(choice)
    raise "Pick an exisiting option" if !@options.include?(choice)
    @choice = choice
  end

end