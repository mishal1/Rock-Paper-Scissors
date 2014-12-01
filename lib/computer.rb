class Computer

	attr_reader :choice

	def initialize
		@name = "Computer"
	end

	def choice
		["rock", "paper", "scissors"].sample
	end

end