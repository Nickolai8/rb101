def multiply_list(arr1, arr2)
  product = []
  arr1.each_index do |index|
    product << arr1[index] * arr2[index]
  end

  product
end
