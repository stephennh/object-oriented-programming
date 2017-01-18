class Cat


  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

# 4
  def eats_at(meal_time)
    if
      meal_time <= 12
      "#{ @meal_time }AM"
    else
      "#{ @meal_time }PM"
    end
  end

# 5
  def meow
  "My name is #{ @name } and I eat #{ @preferred_food } at #{ meal_time }"
  end


end
