class Paperboy

  attr_reader :name, :experience, :earnings

  def initialize(name, experience, earnings)
    @name = name
    # the number of papers they've delivered
    @experience = 50
    # amount of money they've earned
    @earnings = earnings
  end


  def quota(paper_del)
    @quota = @quota + (paper_del / 2)
  end


  def deliver(start_address, end_address)
    # seeing how much was delivered
    total_del = end_address - start_address
    # if the total delivered was over the quota
    if total_del > quota
      # take the excess and multiply by 0.5 for $0.50 per each over quota
      ovr_quot = total_del - quota * 0.5
      # quota delivered multiply by 0.25 for $0.25 per each in quota
      udr_quot = quota * 0.25
      #total earning is the quota($0.25) + over quota($0.5)
      total_earn = udr_quot + ovr_quot
    else
      # total earned is the total delivered multiply by value of $0.25
      total_earn = total_del * 0.25
    end
  end


  def report
    puts "I'm #{name}, I've delivered #{experience} and I've earned #{earnings} so far!"
  end


end
