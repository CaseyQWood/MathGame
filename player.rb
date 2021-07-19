class Player 
  attr_reader :name, :lives, :score
  attr_writer :name, :lives, :score

  def initialize (name)
    self.name = name
    self.lives = 3
  end

  def greeting 
    puts "Greeting #{self.name} welcome to the game, you start with #{self.lives} lives"
  end

  def wrong_answer
    self.lives -= 1
  end

  def is_dead
    self.lives == 0 
  end

end
