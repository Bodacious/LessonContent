class Team
  
  attr_reader :name

  attr_reader :city

  attr_accessor :league

  attr_reader :players

  def initialize(name, city, league)
    @name, @city, @league = name, city, league
    @players = []
  end

  def add_player(player)
    players.push(player)
  end

  def delete_player(player)
    players.delete(player)
  end
  
end