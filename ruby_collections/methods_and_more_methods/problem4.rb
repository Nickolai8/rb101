# in the following code, the "each_with_object" method will return a hash, 
# since a hash is what is specified in the argument for the method invocation.
# since an array is passed, the 'value' block variable will represent
# array values. 'hash' (of which the variable 'hash' 
# represents the empty hash passed as an argument to the method), will
# be used to set the key:value pairs for the hash argument that will be
# returned. Since the hash[key] for every single key:value pair is
# value[0], the hash key will be set to the first letter of each
# value of the array for iteration. value[0] is using the first index
# of the string that value represents as a key, and then using the actual
# value of the string to set as the value. Therefore, the returned
# hash will be 
#{'a'=>'ant', 'b'=>'bear', 'c'=>'cat'}
