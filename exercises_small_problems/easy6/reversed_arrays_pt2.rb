def reverse(arr)
  new_arr = []
  arr.each { |elem| new_arr.unshift(elem) }
  new_arr
end
