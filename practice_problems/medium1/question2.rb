# The reason this one fails, is because a string and an integer cannot be
# added together. Integer must be explicitly converted into a string before
# this can take place
# puts "the value of 40 + 2 is " + (40 + 2)

# Fix 1
puts "the value of 40 + 2 is " + (40 + 2).to_s

# Fix 2
puts "the value of 40 + 2 is #{40+2}"