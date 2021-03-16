UPPER = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
LOWER = 'abcdefghijklmnopqrstuvwxyz'

def letter_percentages(str)
  percentages = { lowercase:0, uppercase:0, neither:0 }
  percentages[:lowercase] = str.count(LOWER) * 100.0 / str.size 
  percentages[:uppercase] = str.count(UPPER) * 100.0 / str.size
  percentages[:neither] = 100 - (percentages[:lowercase] + 
                                 percentages[:uppercase])
  percentages
end

# input is string
# output is a hash
# method is non mutating

# can assume input string will always have at least one character
# input is string, output is percentages of uppercase, lowercase, and neither chars

# hash will be created, data structure is given
# each key will be the case type, and the value will be percentage


# alg
# initialize alphabet constants, one for upper case, one for lowercase
# initialize 3 different hash keys, one for each upper case, lower case, neither
# iterate over string, counting upper case, lower case, and neither chars
# divide each number value by the total size of the input string to get percent
# must be float division, and rounded to the tens it appears
# add these number values to the hash keys