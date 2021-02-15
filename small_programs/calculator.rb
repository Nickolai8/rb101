def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  if num != nil && num.to_i != 0
    true
  else
    prompt("One or more numbers invalid")
  end
end

def operation_to_message(op)
  case op
  when 'add' then 'adding'
  when 'subtract' then 'subtracting'
  when 'multiply' then 'multiplying'
  when 'divide' then 'dividing'
  end
end


operators = ['add','subtract','multiply','divide']
prompt('Welcome to calculator! Enter your name:')
name = gets.chomp.capitalize
prompt("Hi there, #{name}")


loop do
  break if name.empty?

  num1 = nil
  num2 = nil
  loop do
    prompt('First number?(zero not allowed): ')
    num1 = gets.chomp
    prompt('Second number?(zero not allowed): ')
    num2 = gets.chomp
    break if valid_number?(num1) && valid_number?(num2)
  end

  operator_prompt = <<-MSG
    What would you like to do?
    add
    subtract
    multiply
    divide
  MSG
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp.downcase
    break if operators.include?(operator)
    prompt('Please choose a valid operator')
  end

  result = case operator
    when 'add' then num1.to_f + num2.to_f
    when 'subtract' then num1.to_f - num2.to_f
    when 'multiply' then num1.to_f * num2.to_f
    when 'divide' then num1.to_f / num2.to_f
    when num2.to_f.zero? then prompt('You cannot divide by zero. Try again.')
    else prompt 'Invalid operation. Try again.'
    end

  prompt("#{operation_to_message(operator)} the two numbers....")
  prompt("Your result is #{result}") if result != nil

  prompt('Would you like to go again? [yes/no]')
  continue = gets.chomp.downcase
  break unless continue == 'yes'
end