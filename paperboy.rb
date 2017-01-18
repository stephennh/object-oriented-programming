class Paperboy

  attr_reader :earnings
  attr_accessor :name, :experience

  def initialize(name)
    @name = name
    # the number of papers they've delivered
    @experience = 0
    # amount of money they've earned
    @earnings = 0
  end


  def quota
    @quota = 50 + (experience / 2)
  end


  def deliver(start_address, end_address)
    # seeing how much was delivered
    total_del = end_address - start_address + 1
    # if the total delivered was over the quota
    if total_del > quota
      # take the excess and multiply by 0.5 for $0.50 per each over quota
      ovr_quot = (total_del - quota) * 0.5
      # quota delivered multiply by 0.25 for $0.25 per each in quota
      udr_quot = quota * 0.25
      #total earning is the quota($0.25) + over quota($0.5)
      latest_earn = udr_quot + ovr_quot
      @earnings += latest_earn
    else
      # total earned is the total delivered multiply by value of $0.25
      latest_earn = (total_del * 0.25) - 2
      # adding on top of previous value
      @earnings += latest_earn
    end
    # += adds ontop of previous value
    @experience += total_del
    return latest_earn
  end


  def report
    puts "I'm #{name}, I've delivered #{experience} and I've earned $#{earnings} so far!"
  end


end
