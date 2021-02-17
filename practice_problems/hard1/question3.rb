# A)
# "one is: one"
# "two is: two"
# "three is: three"
#
# Because the reassignment of the variables inside of the method
# 'mess_with_vars' does not mutate the original variables passed
# to the method invocation as arguments.

# B)
# Same as above, because the method used inside 'mess_with_vars'
# does not mutate the caller.

# C)
# "one is: two"
# "two is: three"
# "three is: one"
#
# because the .gsub! method mutates the caller, and alters the 
# objects at the memory location of the variables that were passed
# as arguments to the 'mess_with_vars' method invocation
