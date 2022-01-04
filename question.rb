# initialize class Question

class Question

  attr_accessor :num1, :num2, :result

  def initialize 
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @result = @num1 + @num2
  end

end
    

