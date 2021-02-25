# 1st code
# I thought it would puts 'Alice' and then 'Bob' 

# 2nd code
# I would think that it puts out 'BOB' 'BOB'. The reason
# for this is that 'save_name' as a variable references the same object
# or memory spot that 'name' does, and since .upcase! is a destructive method,
# it actually changes the value of the object at the memory location that
# both variables point to/reference. 