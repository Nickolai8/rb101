# the block returns true, then false, then true to the any? method. The reason
# for this is that the last line of the block is num.odd?, which evaluates
# the current element (of the array object that any? was called on and 
# iterates through) as true or false. Since at least one true value
# was returned to the any? method, any? will therefore end by returning
# true. What the block returns is determined by the last line in the block.
# Actually, apparently any? will stop iteration the moment it receives
# one true value (which is the first return value from iterating through the
# array), sort of like any true value does to a conditional
# with 'or/||' or any false value does to 'and/&&' conditionals. I wonder
# if it is also considered short circuit?
# Based on this, we see that the line of code 'puts num' is only triggered
# once when num is 1, so overall the code will put 1 to the console and  
# return true, and that's it.
