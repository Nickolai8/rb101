def balanced?(str)
  count = 0
  bad_positioning = false

  str.chars.each do |char|
    if char == '(' then count += 1
    elsif char == ')' then count -= 1
    end
    bad_positioning = true if count < 0
  end

  count == 0 && !bad_positioning
end

# input is string
# output is boolean
# not mutating

# takes string, returns true if parens in string are properly balanced
# parenthesis must occur in matching () pairs
# parenthesis cant be backwards matching )(

# alg

# iterate over an array of characters made from string
# use a count
# increment counter +1 for every open parenthesis (
# decrease counter -1 for every closed parenthesis )
# false if the counter does not equal 0, or if it ever drops below 0