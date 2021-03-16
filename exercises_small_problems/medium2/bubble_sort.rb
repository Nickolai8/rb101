def bubble_sort(arr)
  loop do
    swaps = 0
    index = 0

    loop do

      if arr[index] > arr[index + 1]
        temp_val = arr[index]
        arr[index] = arr[index + 1]
        arr[index + 1] = temp_val
        swaps += 1
      end

      index += 1
      break if index >= arr.size - 1
    end

    break if swaps == 0
  end
  arr
end

p bubble_sort([2, 9, 10, 3, 7, 3])

# input array
# output array
# mutating? yes, original object returned.

# Rules/examples
# array sorted in place/mutated
# array will contain at least 2 elements
# stop iterating the first time we make a pass through array and there are no swaps

# DS/Alg
# outer loop to check swaps 
# iterate over all elements of array
# initialize swaps to 0
# compare element with element to the right
# if they are out of order, swap them and add to swaps
# move one index over and repeat
# if at end, there are 0 swaps, then we can exit



