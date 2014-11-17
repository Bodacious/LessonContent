require_relative 'player'
require_relative 'team'
require_relative 'rugby'
require_relative 'football'


real_madrid = Football::Team.new("Real Madrid", "Madrid", 'La Liga')

ronaldo = Football::Player.new("Ronaldo", 7)
sonny   = Football::Player.new("Sonny", 10)


real_madrid.add_player(ronaldo)
real_madrid.add_player(sonny)

puts real_madrid.players