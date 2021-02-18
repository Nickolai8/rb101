flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
first_index = -1

# method 1
flintstones.each_with_index do |x, index|
  first_index = index if x[0,2].downcase == 'be'
  break if first_index >= 0
end

# method 2
first_index = 0
flintstones.each_with_index do |x, index|
  first_index = index if x.chars.take(2).join.downcase == 'be'
end
