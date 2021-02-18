# reject method is an alias for the delete_if method I think.
# reject is non destructive, and returns a new array that includes
# all of the values (of the array object that calls the reject method)
# in which the block returns false. If the block returns true for an 
# iteration, the value for that iteration is not passed on to the new
# array that is to be returned by the reject method. 
# Every iteration of the block ends in the line 'puts num', and
# puts always returns nil which has a falsy value. Since every single
# return is false, that means all the elements from the array object
# calling the reject method are passed to the new array created by 
# the method to be returned, and therefore what is returned is
# the array [1,2,3]
