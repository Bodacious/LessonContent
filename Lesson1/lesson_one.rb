class Animal
  
  def initialize(number_of_legs,hair_colour)
    @legs = number_of_legs
    @colour = hair_colour
  end

  def legs
    @legs
  end
  
  def colour
    @colour
  end
  
  def legs_and_colour
    @legs.to_s + @colour
  end
  
end
a = Animal.new(4,"red")
puts a.legs_and_colour


class User
  
  def first_name
    @first_name
  end
  
  def last_name
    @last_name
  end
  
  def full_name
    @first_name + @last_name
  end
    
end

# Remember - We can write getter methods and setter methods using "macros"
# For example:
class Bar
  
  attr_accessor :name
  attr_accessor :capacity
  
end
