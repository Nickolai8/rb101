# 1st
user_int = 0
loop do
  puts "Give an integer greater than 0: "
  user_int = gets.chomp.to_i
  break if user_int > 0 && user_int.is_a?(Integer)
  puts "Invalid answer."
end

prod_or_sum = nil
loop do  
  puts "[Product] or [Sum] of all nums 1 to #{user_int}?"
  prod_or_sum = gets.chomp.downcase
  break if prod_or_sum == 'product'|| prod_or_sum == 'sum'
  puts "Invalid answer." 
end

final_num = 1
if prod_or_sum == 'sum'
  (2..user_int).each { |num| final_num += num }
else
  (2..user_int).each { |num| final_num *= num}
end

p final_num

# 2nd, inject method
user_int = 0
loop do
  puts "Give an integer greater than 0: "
  user_int = gets.chomp.to_i
  break if user_int > 0 && user_int.is_a?(Integer)
  puts "Invalid answer."
end

prod_or_sum = nil
loop do  
  puts "[Product] or [Sum] of all nums 1 to #{user_int}?"
  prod_or_sum = gets.chomp.downcase
  break if prod_or_sum == 'product'|| prod_or_sum == 'sum'
  puts "Invalid answer." 
end

p (1..user_int).reduce(:*) if prod_or_sum == 'product'
p (1..user_int).reduce(:+) if prod_or_sum == 'sum'
