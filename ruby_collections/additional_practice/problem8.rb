# The issue with modifying an array with an operation that changes the
# indices of elements is that certain elements skip evaulation, and the
# iteration ends up going past the length of the array since during
# iteration the array it mutated to a shorter length than it entered
# in to the loop with.

# Modifying elements of an array is fine typically like with transformation,
# however doing anything destructive that affects the size of the actual array
# object iself being iterated over during iteration is a really bad idea
# that can create a lot of weird bugs.

# The first code would output 
# 1
# 3
# The first iteration through numbers outputs the first element (1), and
# then it mutates the numbers array by taking off the first element(1)
# and its new size is 3 [2,3,4]. From then, it prints the second element
# in the array 'numbers' which is now 3. Then, the shift method removes
# numbers first element(2) again, and numbers becomes [3,4]. From then on,
# the iteration ceases, because it has happened twice to the array 'numbers'
# which now only has a size of two. 


# The second code would output 
# 1
# 2
# This code is a lot like the example above, however the pop method is used
# instead of the shift method. Pop removes the last element of an array,
# whereas shift removes the first element. Both are destructive. Through
# the first iteration, 1 is printed to the consol, and 4 is removed from
# the end of the array. On the second iteration, 2 is printed to the consol,
# and 3 is removed from the last spot of the array. By now, the array
# 'numbers' is [1,2], having popped off 3 and 4 during the two iterations.
# Since the loop iterator is now the size of the array, the loop breaks.