# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'string_calculator'

calculator = StringCalculator.new
puts "Please enter the string to be calculated"
input_string = gets
is_valid = calculator.validate(input_string)
if(is_valid)
  operand_list = calculator.parse(input_string)
  result = calculator.add(operand_list)
  puts "Result: #{result}"
else
  puts "Invalid String"
end

