class RockPaperScissorsGame

	attr_reader :players, :player1, :player2

	def initialize
		@players =[]
	end

	def rules
		@rules = {:rock => :scissors, :scissors => :paper, :paper => :rock}
	end

	def add_player(player)
		players << player unless players.count == 2
	end

	def play
		set_players
		return "draw" if player1.choice == player2.choice
		@result = rules[player1.choice.to_sym].to_s == player2.choice ? player1.choice : player2.choice
	end

	def winner
		set_players
		@result == @player1.choice ? player1.name : player2.name
	end

	def set_players
		@player1 = players.first
		@player2 = players.last
	end

end