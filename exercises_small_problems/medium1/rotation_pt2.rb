def rotation(arr)
  new_arr = arr[1..arr.size-1].append(arr[0])
end

def rotate_rightmost_digits(num, digits)
  second = rotation(num.to_s.chars[num.to_s.size-digits..-1])
  first = num.to_s.chars[0,num.to_s.size-digits]

  first.concat(second).join.to_i
end
