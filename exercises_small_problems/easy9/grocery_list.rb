def buy_fruit(condensed_list)
  flat_list = []

  condensed_list.each do |arr|
    arr[1].times { flat_list << arr[0] }
  end

  p flat_list
end





# method takes a nested array
# method returns a regular array

# initialize a new array
# iterate over each element of the parameter array
# for each iteration, n amount of times put the string element
# into the new array. n is given by the number in the array, second element
# return the new array

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]