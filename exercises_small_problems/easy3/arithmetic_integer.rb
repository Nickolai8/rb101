puts "Enter the first number: "
num1 = gets.chomp.to_i
puts "Enter the second number: "
num2 = gets.chomp.to_i

operators = ['+','-','*','/','%','**']

operators.each do |op|
  puts "#{num1} #{op} #{num2} = #{eval"#{num1}#{op}#{num2}"}"
end