def uppercase?(str)
  str.upcase == str
end









# method takes a string
# string can be a single letter and empty, not just multi char
# method returns a boolean object
# an empty string returns true
# all chars must be uppercase in order for the method to return true
# non-alphabetic characters should be ignored

# method returns true if all alphabetic chars inside the string are uppercase
# can easily set an upcase version == the regular input to check if true

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true