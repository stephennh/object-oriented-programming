class Player

  def initialize(gold_coins, health_points, lives, score)
    @lives == 5
    @gold_coins == 0
    @score == 0
    @health_points == 10
  end

  def do_battle
    1 - @health_points
    if @health_points == 0
      1 - @lives
      @health_points == 10
    end
    if @lives == 0
      restart
    end
  end




end
