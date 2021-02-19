a = [1, 4, 8, 11, 15, 19]

p a.bsearch{|x| x > 8 } # binary searches the array for the value 
# of the first element that is greater than 8. 
# bsearch uses the return value of the block (which is true or false) to
# determine if an element (in the array object calling the bsearch method)
# exists in which the condition is true, and then once (and if)
# the method receives the true value it returns the value that triggered
# the blocks conditional statement to be true. 