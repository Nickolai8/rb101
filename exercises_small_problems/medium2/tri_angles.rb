def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3].sort

  if (angles.sum != 180) || (angles.any? { |angle| angle <= 0 })
    :invalid
  elsif angles.include?(90)
    :right
  elsif angles.any?{ |angle| angle > 90 }
    :obtuse
  else
    :acute
  end 

end

# input is 3 integers
# output is a key
# non mutating

# rules/examples
# right triangles have one 90 degree triangle
# acute have no angles greater than or equal to 90
# obtuse has one angle larger than 90
# all 3 numbers must add up to 180 for the triangle to be valid
# all angles must be larger than 0 for the triangle to be valid
# no floating points
# arguments are specified in degrees, not rad or anything else

# ds
# array for sides

# alg
# initialize an array made of the 3 sides parameters, sort it before assigning
# check to see if all angles add up to 180 or if any are less than or equal
# to 0.  If either return invalid symbol
# check to see if any angle above 90
# check to see if any angle is 90
# else option 

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid