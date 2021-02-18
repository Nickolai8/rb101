# The return value of the code is 11. The reason for this, is that
# pop called on an array removes the last element from the array (mutates
# the caller), and that element that was removed is returned. That returned
# element is the string 'caterpillar', which then has the method .size called
# on it, which returns the length of a container (of which a string is
# basically a container of chars). 'caterpillar' has 11 chars in the string,
# so the chained method returns 11.
