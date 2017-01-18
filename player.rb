class Player

  attr_accessor :gold_coins, :health_points, :lives, :score

# default values
  def initialize()
    @lives = 5
    @gold_coins = 0
    @score = 0
    @health_points = 10
  end

# 6
  def do_battle
    puts "Start of battle:"
    p self
    # subtract 1 from players health points
    @health_points = @health_points - 1
    # if health points reaches 0
    if @health_points == 0
      # subtract one from lives
      @lives = @lives - 1
      # reset health points to 10
      @health_points = 10
    end
    # if you have no more lives
    if @lives <= 0
      # run method restart
      restart
    end
    puts "End of battle:"
    p self
  end


# 7
  # resets all starting values to default
  def restart
    puts "Restarting."
    @lives = 5
    @gold_coins = 0
    @score = 0
    @health_points = 10
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
    puts "Start"
    p self
    # loops over each treasure
    treasure.times do |treasure|
      # adds (treasure) gold coins
      @gold_coins += 1
      # if gold coins is divisible by 10
      if @gold_coins % 10 == 0
        # add 1 score
        @score += 1
        # if score is divisible by 10
          if @score % 10 == 0
            # level up
            level_up
          end
      end
    end
    puts "End"
    p self
  end

end
