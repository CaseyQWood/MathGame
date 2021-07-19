require './game'
require './player'

puts 'Please enter your name for player1'
name1 = gets.strip

puts 'Please enter your name for player2'
name2 = gets.strip

game1 = Game.new(name1, name2)

game1.player_list


# player1 = Player.new(name1)
# player1.greeting
