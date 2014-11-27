class Player

	attr_reader :name, :choice

	def initialize(name)
		@name = name
		@options= ["rock", "paper", "scissors"]
	end

	def choose(option)
		raise "Please choose a valid choice" if !@options.include?(option)
		@choice = option
	end

	def rps_fight

end