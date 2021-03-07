def sum_of_sums(arr)
  total = 0
  elements_left = arr.size

  arr.each do |elem|
    total += elem * elements_left
    elements_left -= 1
  end

  total
end
