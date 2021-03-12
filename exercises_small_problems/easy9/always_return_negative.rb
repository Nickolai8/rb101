def negative(num)
  num < 0 ? num : num * -1
end






# takes a number
# returns a number

# if argument is positive, returns the negative
# if argument is negative, return the negative

# I think i can get a one liner with ternary operator

# basically, if the number is less than 0, return that number,
# if the number is greater than 0, return that number * -1

# no such thing as -0 in ruby


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby