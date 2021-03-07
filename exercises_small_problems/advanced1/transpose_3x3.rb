def transpose(matrix)
  transposed = matrix.map { |arr| Array.new(arr.size, nil)}

  matrix.each_with_index do |arr, row|
    arr.each_index { |column| transposed[column][row] = matrix[row][column] }
  end

  transposed
end

# create a new nested array with values flipped
# iterate over and set the indexes reversed