numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# This would put:
# 1
# 2
# 2
# 3
#
# because array.uniq does not mutate the caller, and puts
# prints out an array with each element on its own line
