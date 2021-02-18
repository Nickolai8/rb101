# The select method returns [1,2,3] because the block evaluates the truthiness
# of the last line in it, and 'hi' has a truthy value because it is not
# nil or false. therefore, each element (1, 2, and 3) are placed in
# a new container and returned, because 'hi' evaluates to truthy in each
# iteration.
