# The program will output:
# "My string lookks like this now: pumpkins"
# "My array looks like this now: ['pumpkins', 'rutabaga']"

# The reason that the string didn't change but the array did was
# because << mutates the caller by adding in element(s) to an
# array, so the original array was modified. += is just reassignment,
# so the string was never actually modified. Instead a new string was
# created and stored in "a_string_param", and "my_string" was never
# reassigned. In regards to "an_array_param"
# and my_array, they referenced the same object in memory and the << 
# method actually changed the object they referenced. 
# basically, "my_string" and "my_array" REFERENCE THE EXACT SAME OBJECT
# BEFORE AND AFTER THE METHOD += reassigned "a_string_param" to a new
# object, but << actually changed the object that "my_array" and 
# "an_array_param" referenced, therefore, the change was lasting.