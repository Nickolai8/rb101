def sequence(int)
  (1..int).to_a
end






# takes an integer
# returns an array of all integers from 1.. the number given

# can always assume the argument is a valid int above 0

# i think I can use a range object to create an array from the number
# ill convert the range object to an array and return that, since
# i dont have to test for any cases.



p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]