require './game'
require './player'
require './question'

# question1 = Question.new
# puts question1.question

# answer = gets.strip
# puts question1.check(answer)

puts 'Please enter your name for player1'
name1 = gets.strip

puts 'Please enter your name for player2'
name2 = gets.strip

game1 = Game.new(name1, name2)

game1.start


