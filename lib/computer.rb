class Computer

	attr_reader :name
	attr_accessor :choice

	def initialize
		@name = "Computer"
	end

	def choose
		@choice = ["rock", "paper", "scissors"].sample
	end

end