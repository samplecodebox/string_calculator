# To change this template, choose Tools | Templates
# and open the template in the editor.

class StringCalculator

  # method adds the operands passed after parsing the string and returns the added result
  def add(operand_list)
      sum = 0
      operand_list.each do |operand|
        sum = sum + operand.to_i
      end
      sum
  end

  # validates the input string
    # - if the string contains negative numbers
    # - if the string has two delimiters adjacent to each other and if there is any invalid character
    # - checks for user defined delimiter
  def validate(input_string)
    check_negative_number = input_string.scan(/-\d/)
    if check_negative_number.empty?
      different_delimitor_pattern = /^\/\/[;:&]?[\n\\n]/ # pattern matching different delimitors. Right now added only ;, : and & as valid delimitor
      if(!input_string.match(different_delimitor_pattern).nil?)
        new_delimitor = input_string[2,1]
        input_string.gsub!(different_delimitor_pattern, "").gsub!(new_delimitor, ",")
      end
      check_for_invalid_characters = input_string.match(/(\d+,|\d+\n|\d+\\n)*(\d*)/)
      input_string.eql?(check_for_invalid_characters.to_s) ? true : false
     else
      puts "Negative number not allowed. And #{check_negative_number.join(",")} has been passed"
    end
  end

  # parses the input string and returns the list of operands for the add method
  def parse(input_string)
    operand_list = input_string.split(/[,|\n|\\n]/)
    operand_list
  end
end
