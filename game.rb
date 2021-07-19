class Game 

  attr_accessor :player1, :player2

  def initialize(name1, name2)
    self.player1 = Player.new(name1)
    self.player2 = Player.new(name2)
    @turn_number = 0 
    @current_player
    @current_question
    @waiting_player
  end

  def player_greetings
    puts self.player1.greeting
    puts self.player2.greeting
  end

  def turn 
    # if player1.is_dead || player2.is_dead

    # end
    @turn_number += 1
    if @turn_number.odd? 
      @current_player = player1 
      @waiting_player = player2
    else 
      @current_player = player2
      @waiting_player = player1
    end

    puts "it is currently #{@current_player.name}'s turn"

    @current_question = Question.new
    puts "ok #{@current_player.name} #{@current_question.question}"

    answer = gets.strip
    if @current_question.check(answer)
      puts "You where correct!"
      puts "Current score #{self.player1.name} has #{self.player1.lives} lives and #{self.player2.name} has #{self.player2.lives} lives"
      self.turn
    else
      @current_player.wrong_answer
      puts 'You where incorrect :( '
      puts "Current score #{player1.name} has #{player1.lives} lives and #{player2.name} has #{player2.lives} lives"

      if @current_player.is_dead
        self.end_game
      end

      self.turn

    end
  end

  def end_game
    puts "player #{@waiting_player.name} wins and player #{@current_player.name} looses"
    exit(0)
  end


  def start
    self.player_greetings
    self.turn
  end

end

