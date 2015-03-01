require 'tennis'

describe 'Tennis' do

  let(:match) { Tennis.new('Boris Becker', 'Jim Courier') }

  describe '#score' do

    it "returns 'Love all' if any player has scored yet" do
      expect(match.score).to eq "Love all"
    end

    it "returns 'Fifteen, Love' if only player one has scored one point" do
      match.player_one_scores()

      expect(match.score).to eq "Fifteen, Love"
    end

    it "returns 'Thirty, Love' if only player one has scored two points" do
      match.player_one_scores()
      match.player_one_scores()

      expect(match.score).to eq "Thirty, Love"
    end

    it "returns 'Love, Fifteen' if only player two has scored one point" do
      match.player_two_scores()

      expect(match.score).to eq "Love, Fifteen"
    end

    it "returns 'Love, Thirty' if only player two has scored two points" do
      match.player_two_scores()
      match.player_two_scores()

      expect(match.score).to eq "Love, Thirty"
    end

    it "returns 'Fifteen all' if both players scored one point" do
      match.player_one_scores()
      match.player_two_scores()

      expect(match.score).to eq "Fifteen all"
    end

    it "returns 'Thirty all' if both players scored two points" do
      match.player_one_scores()
      match.player_one_scores()
      match.player_two_scores()
      match.player_two_scores()

      expect(match.score).to eq "Thirty all"
    end

    it "returns 'Forty, Fifteen' if player one scored three points and player two only one point" do
      match.player_one_scores()
      match.player_one_scores()
      match.player_one_scores()
      match.player_two_scores()

      expect(match.score).to eq "Forty, Fifteen"
    end

    it "returns 'Deuce' if both players scored three points" do
      match.player_one_scores()
      match.player_one_scores()
      match.player_one_scores()
      match.player_two_scores()
      match.player_two_scores()
      match.player_two_scores()

      expect(match.score).to eq "Deuce"
    end

    it "returns 'Boris Becker advantage' if player one has one point more than player two, and both scored three points at least" do
      match.player_one_scores()
      match.player_one_scores()
      match.player_one_scores()
      match.player_two_scores()
      match.player_two_scores()
      match.player_two_scores()

      match.player_one_scores()

      expect(match.score).to eq "Boris Becker advantage"
    end

    it "returns 'Jim Courier advantage' if player two has one point more than player two, and both scored three points at least" do
      match.player_one_scores()
      match.player_one_scores()
      match.player_one_scores()
      match.player_two_scores()
      match.player_two_scores()
      match.player_two_scores()

      match.player_two_scores()

      expect(match.score).to eq "Jim Courier advantage"
    end

    it "returns 'Boris Becker wins' if player one has (at least) four points and two more points than the player two" do
      match.player_one_scores()
      match.player_one_scores()
      match.player_one_scores()
      match.player_one_scores()
      match.player_two_scores()
      match.player_two_scores()

      expect(match.score).to eq "Boris Becker wins"
    end

    it "returns 'Jim Courier wins' if player one has (at least) four points and two more points than the player two" do
      match.player_one_scores()
      match.player_one_scores()
      match.player_two_scores()
      match.player_two_scores()
      match.player_two_scores()
      match.player_two_scores()

      expect(match.score).to eq "Jim Courier wins"
    end

    it "returns 'Boris Becker wins' if player one scores one point when it has advantage" do
      match.player_one_scores()
      match.player_one_scores()
      match.player_one_scores()
      match.player_two_scores()
      match.player_two_scores()
      match.player_two_scores()
      match.player_one_scores()

      match.player_one_scores()

      expect(match.score).to eq "Boris Becker wins"
    end

  end

end
