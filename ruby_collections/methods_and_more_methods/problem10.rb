# the return value is the array [1, nil, nil]. The reason for this is that
# the method map uses the return value of the block to transform
# the current element of each iteration. All values of the calling
# array object that are above 1 register as true to the if statement,
# and therefore puts the number to the console but returns nil to the
# method map (because puts always returns nil).
# the else statement just returns the current element, so any element
# that does not trigger element > 1 will just return the normal element
# to the new array created and returned by the map method.
# therefore, 1 triggers else, while 2 and 3 trigger the if, and
# the returned array is [1, nil, nil]
