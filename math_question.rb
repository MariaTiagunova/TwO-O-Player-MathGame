class MathQuestion
  attr_reader :num1, :num2

  def initialize
    generate_question
  end

  def generate_question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def check_answer(answer)
    answer.to_i  == @num1 + @num2
  end

end
