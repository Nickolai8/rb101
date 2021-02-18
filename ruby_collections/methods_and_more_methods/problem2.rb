# Count uses the block as a way to decide whether or not it will
# count the current value of the array based on whether or not the 
# block returns true or false. If true, the count method will cound that 
# iteration, where as if it returns false count will not increment itself.
# count starts with 0, and every time a value is returned true it increments
# itself by +1. Therefoore, since two string lengths out of the three
# are less than 4, two true values will return in total to the count method
# from the block and it will return 2. 
# we can always find out how a method works, such as what it returns and
# if it is destructive by looking it up in the google documentation and also
# from experimenting with snippets of our own code.
