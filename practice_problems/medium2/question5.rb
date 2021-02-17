# one way to change the code would be to name the method definition
# in a way that shows if it does or does not mutate the arguments
# that are passed to the method invocation. 

# Another way is that we can make it either mutate both the string
# and the array, or not mutate either, instead of modifying one
# and not modifying the other.

# An even better idea would be to make sure the method does only one
# thing, and split it up into two methods, one for an array and one
# for a string. That would be a much better idea and make the code
# that much more useful and clear. The code would be much easier
# to debug and much easier to read.

def change_string(string)
  string << 'rutabaga'
end

def change_array(array)
  array << 'rutabaga'
end

my_string = 'pumpkins'
my_array = 'pumpkins'

change_string(my_string)
change_array(my_array)

puts my_string
puts my_array