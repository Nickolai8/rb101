def sequence(count, starting_num)
  (1..count).map{ |iteration| iteration * starting_num }
end






# method takes2 integers as an argument
# method returns an array as an argument

# the first argument is a count, the second is the first
# number of a sequence that your method will create

# the second number is the starting element, and how much is added to 
# the element for each iteration

# gotta initialize a new array and set it to return at the end of function
# each eleemnt will be one higher than its index position multiplied by
# the starting_num
# iterate over using index



# if the first argument is 0, the method should return a blank array

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []