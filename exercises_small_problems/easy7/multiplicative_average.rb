def show_multiplicative_average(arr)
  product = 1.0
  arr.each { |num| product *= num }
  (product/arr.size).round(3)
end
