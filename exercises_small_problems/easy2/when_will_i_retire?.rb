current_year = Time.now.year

puts "What is your age?"
user_age = gets.chomp.to_i

puts "At what age would you like to retire?"
user_retirement_age = gets.chomp.to_i

years_left = user_retirement_age - user_age

puts "It's #{current_year}. You will retire in #{current_year + years_left}"
puts "You have only #{years_left} years of work to go!"