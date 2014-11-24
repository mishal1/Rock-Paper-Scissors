class Player

	attr_reader :name, :choice

	def initialize(name)
		@name = name
		@options= ["rock", "paper", "scissors"]
	end

	def choose(option)
		@choice = option
	end

end