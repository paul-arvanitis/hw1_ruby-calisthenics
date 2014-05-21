class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    raise NoSuchStrategyError , 'Strategy must be one of R,P,S' if (player1[1].match(/[PRS]/).nil? or player2[1].match(/[PRS]/).nil?)
    return player1 if player1[1] == player2[1]
    if player1[1] == 'P'
      return player1 if player2[1] == 'R'
      return player2
    elsif player1[1] == 'R'
      return player1 if player2[1] == 'S'
      return player2
    else
      return player1 if player2[1] == 'P'
      return player2
    end
  end

  def self.tournament_winner(tournament)
      if tournament[0][1].is_a? String
      	return self.winner(tournament[0],tournament[1])
      end
      self.winner(self.tournament_winner(tournament[0]),self.tournament_winner(tournament[1]))
  end

end
