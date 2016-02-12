class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError 
    def initialize()
      super "Strategy must be one of R,P,S"     
    end
  end

  def self.winner(player1, player2)
  	if player1[1] != 'R' && player1[1] != 'S' && player1[1] != 'P'
  		raise NoSuchStrategyError
  	end
    if player2[1] != 'R' && player2[1] != 'S' && player2[1] != 'P'
      raise NoSuchStrategyError
    end
    if player1[1] == "R"
    	if player2[1] == "P"
    		return player2
    	elsif player2[1] == "S"
    		return player1
    	elsif player2[1] == "R"
    		return player1
    	end
    end
    if player1[1] == "P"
    	if player2[1] == "P"
    		return player1
    	elsif player2[1] == "S"
    		return player2
    	elsif player2[1] == "R"
    		return player1
    	end
    end
    if player1[1] == "S"
    	if player2[1] == "P"
    		return player1
    	elsif player2[1] == "S"
    		return player1
    	elsif player2[1] == "R"
    		return player2
    	end
    end
  end

  def self.tournament_winner(tournament)
   return self.winner(tournament[0], tournament[1]) if tournament.flatten.size == 4
   self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
  end

end
