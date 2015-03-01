require 'player'
require 'tennis_scoreboard'
require 'tennis_rules'

class Tennis

  def initialize(player_one_name, player_two_name)
    @player_one = Player.new(player_one_name)
    @player_two = Player.new(player_two_name)
    @scoreboard = TennisScoreboard.new(TennisRules.new)
  end

  def score
    @scoreboard.render(@player_one, @player_two)
  end

  def player_one_scores
    @player_one.scores()
  end

  def player_two_scores
    @player_two.scores()
  end
end
