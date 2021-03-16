def minilang(str)
  stack = []
  register = 0
  commands = str.split
  
  commands.each_index do |index|
    if validnum?(commands[index]) 
      register = commands[index].to_i
    elsif commands[index] == 'PUSH'
      stack << register
    elsif commands[index] == 'ADD'
      register += stack.pop
    elsif commands[index] == 'SUB'
      register -= stack.pop
    elsif commands[index] == 'MULT'
      register *= stack.pop
    elsif commands[index] == 'DIV'
      register /= stack.pop
    elsif commands[index] == 'MOD'
      register = register.divmod(stack.pop)[1]
    elsif commands[index] == 'POP'
      register = stack.pop
    elsif commands[index] == 'PRINT'
      puts register
    end
  end

end

def validnum?(num)
   num.to_i.to_s == num
end

# input is string literal object
# output is nothing, function is to display
# mutating? no

# rules/examples
# register is current value, not part of the stack
# operations that require 2 values pop the top value from the stack, compute,
# and store the new value back in the register
# all operations are integer operations
# assume that all strings are correct programs and dont contain errors
# initialize register to 0

# DS/Alg
# initialize register to 0
# take string up and split into an array
# iterate over array, using the elements to check for key words
# use index to capture elements to right and left for certain operations
