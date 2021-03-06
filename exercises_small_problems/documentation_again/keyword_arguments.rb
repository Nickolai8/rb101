# the code will put out:
# 5
# 8
# to the standard output, and that is all. The reason for this, is that
# 5.step(to: 10, by: 3) { |value| puts value } 
# takes the current value, and puts it to the standard output, and then
# increments the value by +3. If the new value is 10 or higher, the loop
# breaks, and the program returns. It starts out with 5 as a value,
# putting 5 to the standard output, and incrementing it by +3. Next
# turn it puts 8 to the standard output, and then increments it by +3
# again, and the new value is 11. 11 is larger than 10, so the loop is broken
# and the method is complete.
