def reverse_array!(arr)
  temp_arr = []
  
  loop do
    arr.size <= 0 ? break : temp_arr << arr.pop
  end

  arr.concat(temp_arr)
end
