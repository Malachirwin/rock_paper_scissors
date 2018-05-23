class RPS

  def initialize
    @rps = rps
  end

  def rps
    @rps
  end

  def wins?(player1, player2)
    if player1 == "rock" && player2 == "scissors"
      result = true
    elsif player1 == "scissors" && player2 == "paper"
      result = true
    elsif player1 == "paper" && player2 == "rock"
      result = true
    else
      result = false
    end
    result
  end
end
