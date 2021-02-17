# Method 1
if 10 < 42 && 42 < 100
  puts "42 does lie between 10 and 100"
else
  puts "42 does not lie between 10 and 100"
end

# Method 2
puts "42 does lie between 10 and 100" if (10..100).include?(42)