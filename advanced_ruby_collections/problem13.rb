arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |inner|
  inner.select { |element| element % 2 == 1}
end
