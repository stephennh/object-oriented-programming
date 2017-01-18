class Player

  def initialize(gold_coins, health_points, lives, score)
    @lives == 5
    @gold_coins == 0
    @score == 0
    @health_points == 10
  end

# 6
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


# 7
  def restart
    @lives == 5
    @gold_coins == 0
    @score == 0
    @health_points == 10
  end


# 8
  def level_up
    @lives += 1
  end

# 9
  def collect_treasure(treasure)
    @gold_coins + treasure
    if @gold_coins == 10
      @score += 1
      if @score == 10
        level_up
      end
    end
  end

end
