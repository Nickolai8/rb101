# method 1
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |x, index|
  flintstones[index] = x.slice(0,3)
end

# method 2
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |x, index|
  flintstones[index] = x.chars[0..2].join
end
