def factors(number)
  if number <= 0
    puts "Cannot find the answer to numbers less than or equal to zero"
  else
    divisor = number
    factors = []
    number.times do
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end
    factors
  end
end

p factors(100)
p factors(-27)


# number % divisor == 0 in the method indicates whether or not a number
# divides perfectly into the original number, therefore verifying whether or
# not the number is a factor of the original number, or if there is a 
# remainder

# The purpose of putting factors at the bottom is to return the entire
# factors array. Without it, it would return "nil"