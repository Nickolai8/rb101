def featured(num)

  loop do 
    num += 1
    break if divisible_by_7?(num) && digits_occur_once?(num) && num.odd? 
    return "Error" if num >= 9876543210
  end

  num
end

def divisible_by_7?(num)
  num % 7 == 0
end

def digits_occur_once?(num)
  num.to_s.chars.uniq.join.to_i == num
end

# intput is int
# output is int
# non mutating

# rules/examples
# odd number
# multiple of 7
# digits occur exactly once each
# single int is given, returns next featured number greater than argument. error if no next

# DS

# Alg
# method check if number divisible by 7
# method tocheck if numbers digits are all unique
# method to check if number is odd
# loop incrememnting number by one and checking all the statements above
# until theyre all accurate then return number, or return an error
# if number is 9876543210 or above
