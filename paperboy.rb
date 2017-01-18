class Paperboy

  attr_reader :name, :experience, :earnings

  def initialize(name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings
  end


  def quota

  end


  def deliver(start_address, end_address)

  end


  def report
    puts "I'm #{name}, I've delivered #{experience} and I've earned #{earnings} so far!"
  end


end
