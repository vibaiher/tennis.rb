class Player

  attr_reader :points

  def initialize(name)
    @points = 0
    @name = name
  end

  def name
    @name
  end

  def scored?
    return @points != 0
  end

  def scores
    @points += 1
  end

  def render_score
    return score_translation[@points]
  end

  def wins?(player)
    @points > 3 && self.render_score != player.render_score
  end

  def tied?(player)
    self.render_score == player.render_score
  end

  def advantage?(player)
    @points > 3
  end

  private

  def score_translation
    [ 'Love', 'Fifteen', 'Thirty', 'Forty' ]
  end

end
