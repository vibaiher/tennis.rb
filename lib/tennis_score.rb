class TennisScore

  attr_reader :server, :receiver

  def initialize
    @server = 0
    @receiver = 0
  end

  def server_scores
    @server += 1
  end

  def receiver_scores
    @receiver += 1
  end

end
