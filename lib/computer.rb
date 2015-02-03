class Computer

  attr_accessor :options
  attr_reader :choice, :name

  def initialize
    @options = ["rock", "paper", "scissors"]
    @name = "robot"
  end

  def pick
    @choice = @options.sample
  end

end