def transpose(matrix)
  transposed = reverse_size(matrix)

  matrix.each_with_index do |arr, row|
    arr.each_index { |column| transposed[column][row] = matrix[row][column] }
  end

  transposed
end

def reverse_size(matrix)
  return_matrix = Array.new(matrix[0].size)
  return_matrix.map! { |elem| elem = Array.new(matrix.size)}
end
