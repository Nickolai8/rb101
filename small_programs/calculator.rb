require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  if (num.to_f.to_s == num) || (num.to_i.to_s == num)
    true
  else
    prompt("One or more numbers invalid")
  end
end

def operation_to_message(op)
  operator_ing = case op
  when 'add' then 'adding'
  when 'subtract' then 'subtracting'
  when 'multiply' then 'multiplying'
  when 'divide' then 'dividing'
  end
  # code here before returning case statement result
  operator_ing
end

languages = ['english', 'espanol']
user_language = ''
loop do
  prompt(MESSAGES['lang'])
  user_language = gets.chomp.downcase
  break if languages.include?(user_language)
end

possible_operators = ['add', 'subtract', 'multiply', 'divide']
prompt(MESSAGES[user_language]['welcome'])
name = gets.chomp.capitalize
prompt(MESSAGES[user_language]['name_greeting'])

loop do
  break if name.empty?

  num1 = nil
  num2 = nil
  loop do
    prompt(MESSAGES[user_language]['first_num'])
    num1 = gets.chomp
    prompt(MESSAGES[user_language]['second_num'])
    num2 = gets.chomp
    break if valid_number?(num1) && valid_number?(num2)
  end

  # FIXME dont know how to do multi line in yaml files 
  operator_prompt = <<-MSG
    What would you like to do?
    add
    subtract
    multiply
    divide
  MSG
  prompt(operator_prompt)

  prompt(MESSAGES['operator_selection'])
  
  operator = ''
  loop do
    operator = gets.chomp.downcase
    break if possible_operators.include?(operator)
    prompt(MESSAGES[user_language]['operator_error'])
  end

  result = case operator
    when 'add' then num1.to_f + num2.to_f
    when 'subtract' then num1.to_f - num2.to_f
    when 'multiply' then num1.to_f * num2.to_f
    when 'divide' then num1.to_f / num2.to_f # if num2 not zero add here
    when num2.to_f.zero? then prompt(MESSAGES[user_language]['divide_by_zero'])
    else prompt(MESSAGES[user_language]['invalid_op'])
    end

  prompt(MESSAGES[user_language]['operator_in_action'])
  prompt(MESSAGES[user_language]['result_is']) if result != nil

  prompt(MESSAGES[user_language]['go_again'])
  continue = gets.chomp.downcase
  break unless continue == 'yes'
end

############## PRY TEST
# binding.pry
# sample_array = nil
# sample_array.each do
#   puts ""
# end
########################

