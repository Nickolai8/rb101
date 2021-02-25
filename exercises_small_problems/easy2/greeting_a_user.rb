puts "What is your name? "
user_name = gets.chomp.capitalize

if user_name[-1] == '!'
  puts "HELLO #{user_name.upcase.chomp('!')}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{user_name}"
end
