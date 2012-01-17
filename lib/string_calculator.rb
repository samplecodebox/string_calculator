# To change this template, choose Tools | Templates
# and open the template in the editor.

class StringCalculator

  def initialize
    @sum = 0
  end

  def add(input_string)
    operand_list = parser(input_string)
    operand_list.each do |operand|
      @sum+= operand.to_i
    end
    result = "Result: #{@sum}"
    result
  end

  private
  def parser(input_string)
      operand_list = input_string.split(",")
      operand_list
  end
end
