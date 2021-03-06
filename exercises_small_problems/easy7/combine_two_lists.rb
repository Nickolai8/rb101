# Method 1
def interleave(arr1, arr2)
  newarr = []
  arr1.each_index do |index|
    newarr << arr1[index]
    newarr << arr2[index]
  end
  newarr
end

# Method 2
def interleave(arr1, arr2)
  newarr = []
  i = 0
  loop do
    newarr << arr1[i]
    newarr << arr2[i]
    i += 1
    break if i >= arr1.size || i>= arr2.size 
  end

  newarr
end
