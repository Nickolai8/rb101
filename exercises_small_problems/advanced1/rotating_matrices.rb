def reverse_size(matrix)
  return_matrix = Array.new(matrix.first.size)
  return_matrix.map! { |elem| elem = Array.new(matrix.size)}
end

def rotate90(matrix)
  transposed = reverse_size(matrix)

  transposed.each_with_index do |arr, row|
    arr.each_index do |column| 
      transposed[column][row] = matrix[arr.size - 1 - row][column] 
    end
  end

  transposed
end

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# p transpose(matrix)


# [
#   [0,0][0,1][0,2][0,3],
#   [1,0][1,1][1,2][1,3]
# ]
# [
#   [[1,0][0,0]],
#   [[1,1][0,1]],
#   [[1,2][0,2]],
#   [[1,3][0,3]]
# ]


# [
#   [[0,0],[0,1],[0,2]],
#   [[1,0],[1,1],[1,2]],
#   [[2,0],[2,1],[2,2]]
# ]

# [
#   [[2,0],[1,0],[0,0]],
#   [[2,1],[1,1],[0,1]],
#   [[2,2],[1,2],[0,2]]
# ]

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

p new_matrix1 = rotate90(matrix1)
p new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2