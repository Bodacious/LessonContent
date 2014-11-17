class Player
  
  attr_reader :name

  attr_reader :number

  def initialize(name, number)
    @name = name
    @number = number
  end
  
  def to_s
    name + " " + number.to_s
  end

end
