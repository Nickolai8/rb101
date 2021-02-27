# the string returned will not be the same object as the one passed in.
# while the #reverse! method is destructive, it is called on the array
# that is returned by using #split on string, which returns a new
# array that does not reference the same object(s) as the string it was
# used on. In the end, the array that was created (with its words 
# reversed by use of a destructive method in the block of a #each method)
# is joined together and then returned back to the main function/method.