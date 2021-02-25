# Array 2 will be an upcase version of array1. First array1 is iterated
# over with the each method, and each element of array1 is pushed
# into array2. Then, each value of array1 that starts with 'C' or 'S'
# has the .upcase! method (which is destructive) called onto it. So,
# array1 is set to 
#['Moe', 'Larry', 'CURLY', 'SHEMP', 'Harpo', 'CHICO', 'Groucho', 'Zeppo'].
# since both array1 and array2 reference the same objects, as array2 is just
# a copy of the reference array1 object, when array2 is puts to the 
# console, each element in array1 is shown, line by line.
# all objects in both arrays are pointers/reference string objects, and 
# both arrays share the same objects that they reference. Any destructive
# method called on any of the objects in either array will affect the other. 