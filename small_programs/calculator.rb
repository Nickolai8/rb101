# ask for 2 nums + get input
# ask for operation + get operation
# perform operation
# outpuut

Kernel.puts("First number?: ")
num1 = Kernel.gets().chomp()
Kernel.puts("Second number?: ")
num2 = Kernel.gets().chomp()
Kernel.puts("add/subtract/multiply/divide")
operator = Kernel.gets().chomp().downcase

if operator == "add"
  result = num1.to_f() + num2.to_f()
elsif operator == "subtract"
  result = num1.to_f() - num2.to_f()
elsif operator == "multiply"
  result = num1.to_f() * num2.to_f()
elsif operator == "divide" && num2.to_f() != 0
  result = num1.to_f() / num2.to_f()
elsif num2.to_f == 0
  puts "You cannot divide by zero. Try again."
else
  puts "Invalid operation. Try again."
end

puts "#{num1} #{operator} #{num2} equals #{result}"