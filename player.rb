class Player

  attr_accessor :gold_coins, :health_points, :lives, :score

  def initialize(gold_coins, health_points, lives, score)
    @lives == 5
    @gold_coins == 0
    @score == 0
    @health_points == 10
  end

# 6
  def do_battle
    # subtract 1 from players health points
    @health_points - 1
    # if health points reaches 0
    if @health_points == 0
      # subtract one from lives
      @lives - 1
      # reset health points to 10
      @health_points == 10
    end
    # if you have no more lives
    if @lives == 0
      # run method restart
      restart
    end
  end


# 7
  # resets all starting values to default
  def restart
    @lives == 5
    @gold_coins == 0
    @score == 0
    @health_points == 10
  end


# 8
  # increases lives by 1
  def level_up
    @lives += 1
  end

# 9
  # takes 1 number as an argument
  def collect_treasure(treasure)
    # adds to gold coins
    @gold_coins + treasure
    # if gold_coins reaches 10
    if @gold_coins == 10
      # score should increase by 1
      @score += 1
      # if score reaches 10
      if @score == 10
        # run level_up method
        level_up
      end
    end
  end

end
