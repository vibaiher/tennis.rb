require 'tennis_score'

class TennisRules

  def tied?(player_one, player_two)
    player_one.points == player_two.points
  end

  def finished?(player_one, player_two)
    (player_one.points - player_two.points).abs > 1 && (player_one.points > 3 || player_two.points > 3)
  end

  def advantage?(player_one, player_two)
    player_one.advantage?(player_two) || player_two.advantage?(player_one)
  end

  def winner(player_one, player_two)
    return player_one.wins?(player_two) ? player_one : player_two;
  end

  def advantage(player_one, player_two)
    return player_one.advantage?(player_two) ? player_one : player_two
  end

end
