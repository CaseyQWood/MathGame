class Player 
  attr_reader :name, :lives, :score
  attr_writer :name, :lives, :score

  def initialize (name)
    self.name = name
    self.lives = 3
    self.score = 0
  end

  def greeting 
    puts "Greeting #{self.name} welcome to the game, you start with #{self.lives} lives"
  end

  # def wrong_answer
  #   self.lives -= 1
  # def

  def right_answer
    self.score += 1
  end
end
