def sum_square_difference(num)
  total = (1..num).reduce(:+) ** 2
  (1..num).each { |num| total -= (num ** 2) }
  total
end

# input int
# output out
# mutating? no, int objects are immutable

# rules/examples
# takes an int
# calculates the square of the sum of first n positive integers
# subtracts the squares of each first..n positive integer

# DS/Alg
# initialize a total
# create range of numbers from parameter
# iterate over range of numbers adding all together to the total
# once complete, reassign the total to its square

# iterate over a range again based on parameter
# for each value, square it and store it
# once that is complete, subtract each value from the total