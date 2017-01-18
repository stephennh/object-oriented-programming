class Cat


  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

# 4
  def eats_at
    if @meal_time <= 11
      "#{ @meal_time }AM"
    elsif @meal_time == 12
      "#{ @meal_time }PM"
    else
      "#{ @meal_time - 12}PM"
    end
  end

# 5
  def meow
  "My name is #{ @name } and I eat #{ @preferred_food } at #{ eats_at }"
  end


end
