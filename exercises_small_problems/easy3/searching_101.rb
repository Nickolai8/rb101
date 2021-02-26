array = Array.new(5)

array.each_with_index do |elem, index|
  puts "Enter number #{index + 1}: "
  array[index] = gets.chomp.to_i
end

puts "Enter number to search for: "
search_num = gets.chomp.to_i

if array.include?(search_num)
  puts "the number #{search_num} appears in #{array}"
else
  puts "the number #{search_num} does not appear in #{array}"
end
