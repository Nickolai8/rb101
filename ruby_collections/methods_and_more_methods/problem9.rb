# the return value of the map method is an array since map always returns
# an array, at least when called on a hash object. Since the first
# key value pair is true, it looks like if the size/length of the
# value is above 3, then the value is returned to the array created by
# map. If not, then there is no return, which I think is just nil. 
# therefore, the first value 'ant' will skip the if branch and the value will
# not be passed to the array created by map, where as the second value 'bear'
# will trigger true with the if branch and the value will be passed
# to the array. 
# therefore, the array created and returned by the map method will be
# [nil,'bear'] 
