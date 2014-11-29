class RockPaperScissorsGame

	attr_reader :players

	def initialize
		@players =[]
	end


	def fight(option1, option2)
		return "draw" if option1 == option2
		rules= {:rock => :scissors, :scissors => :paper, :paper => :rock} 
		rules[option1.to_sym].to_s == option2 ? option1 : option2
	end

	def computer_choice
		["rock", "paper", "scissors"].sample
	end

	def add_player(player)
		players << player unless players.count == 2
	end

	def started?
		players.count == 2
	end

end