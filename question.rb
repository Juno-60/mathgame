class Question

  attr_accessor :num1, :num2, :problem_solution, :problem_string

  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @problem_string = "What is #{@num1} + #{@num2}?"
    @problem_solution = @num1 + @num2 
  end
  
end