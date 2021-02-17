answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8



# The output of the code is 34. The reason it is, is because the 
# method mess_with_it reassigns the variable that is passed to it.
# Reassignment NEVER mutates the caller. If the method had mutated 
# the caller, the final line would have output 42. However,
# += is a style of reassignment, and therefore the variable
# "answer" is never mutated, and so it is unaffected by being used
# as an argument to the mess_with_it method. 
# Side note: since the method used in the method definition is not
# destructive/doesn't mutate the caller, the method acts as
# pass by value instead of pass by reference.