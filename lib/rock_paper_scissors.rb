class RockPaperScissorsGame


	def self.fight(option1, option2)
		return "draw" if option1 == option2
		rules= {:rock => :scissors, :scissors => :paper, :paper => :rock} 
		rules[option1.to_sym].to_s == option2 ? option1 : option2
	end

	def computer_choice
		["rock", "paper", "scissors"].sample
	end

end