class Game 

  attr_accessor :player1, :player2

  def initialize(name1, name2)

    self.player1 = Player.new(name1)
    self.player2 = Player.new(name2)
    # self.player1 = name1
    # self.player2 = name2
  end

  def player_list
    puts self.player1.greeting
    puts self.player2.greeting
  end

end