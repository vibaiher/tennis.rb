class TennisScoreboard

  def initialize(rules)
    @rules = rules
  end

  def render(player_one, player_two)
    if @rules.finished?(player_one, player_two)
      return render_winner(@rules.winner(player_one, player_two))
    end

    if @rules.advantage?(player_one, player_two)
      return render_advantage(@rules.advantage(player_one, player_two))
    end

    if @rules.tied?(player_one, player_two)
      return render_tie(player_one.render_score)
    end

    return "#{player_one.render_score}, #{player_two.render_score}"
  end

  private

  def render_tie(score)
    if score == "Forty"
      return "Deuce"
    end

    return "#{score} all"
  end

  def render_advantage(player)
    return "#{player.name} advantage"
  end

  def render_winner(player)
    return "#{player.name} wins"
  end

end
