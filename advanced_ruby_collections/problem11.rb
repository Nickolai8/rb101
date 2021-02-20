arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |x|
  x.select {|y| y % 3 == 0}
end
