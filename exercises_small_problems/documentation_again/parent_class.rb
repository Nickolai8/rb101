# the way to find only methods available to string instances that aren't
# inherited from parent classes or included modules is to use
# the same code, puts s.public_methods.inspect but add a 'false'
# argument to the #public_methods method. #public_methods has a parameter
# with a default value of 'true', so without using false as an argument
# the method will print out all methods available to string.
# final answer: s.public_methods(false).inspect