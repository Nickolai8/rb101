def rotation(arr)
  new_arr = arr[1..arr.size-1].append(arr[0])
end

def max_rotation (num)
  arr = num.to_s.chars
  arr.each_with_index do |elem, i|
    arr[i..-1] = rotation(arr[i..-1])
  end
  arr.join.to_i
end
