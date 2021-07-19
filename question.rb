class Question 
  attr_accessor :question

  def initialize
    @num1 = rand(1..25)
    @num2 = rand(1..25)
    @answer = @num1 + @num2
    @question = "what is #{@num1} plus #{@num2}"
  end


  def what_numbers
    puts @num1
    puts @num2
  end

  def check(answer)
    answer.to_i == @answer
  end
end