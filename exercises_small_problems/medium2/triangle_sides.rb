def triangle(side1, side2, side3)
  sides = [side1,side2,side3].sort

  if (sides.any? { |side| side <= 0 }) || (sides[0] + sides[1] < sides[2])
    :invalid
  elsif side1 == side2 && side2 == side3
    :equilateral
  elsif side1 == side2 || side2 == side3 || side1 == side3
    :isosceles
  else
    :scalene
  end

end


# first look
# input is 3 integer objects
# output is a symbol object
# mutating? this is not mutating

# requirements
# all sides must be greater than 0
# the sum of the two smaller sides must be greater than the third side
# must return a symbol

# alg

# initialize an array with the parameter values in it
# sort the array so that smallest is first and bigest is last
# check condition that smaller two are bigger than last when summed
# check that all numbers in array are bigger than 0
# check for other cases afte, being that all sides are equal if two sides are
# need to return key values depending on outcome of conditional

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid