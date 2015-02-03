class Computer

  attr_accessor :options
  attr_reader :choice

  def initialize
    @options = ["rock", "paper", "scissors"]
  end

  def pick
    @choice = @options.sample
  end

end