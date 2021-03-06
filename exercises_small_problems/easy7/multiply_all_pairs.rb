def multiply_all_pairs(arr1, arr2)
  products = []

  arr1.each do |elem1|
    arr2.each do |elem2|
      products << elem1 * elem2
    end
  end

  products.sort
end
