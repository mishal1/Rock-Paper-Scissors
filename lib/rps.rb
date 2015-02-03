class RockPaperScissors

  attr_reader :players
  attr_accessor :rules

  def initialize
    @players = []
    @rules =  {rock: :paper, paper: :scissors, scissors: :rock}
  end

  def add_player(player)
    @players << player unless @players.count >= 2
  end

  def declare_winner
    if @rules[@players.first.choice.to_sym] === @players.last.choice.to_sym
      return @players.first.name
    end
      return @players.last.name
  end

end