def leading_substrings(str)
  arr = []
  iteration = 0

  str.size.times do
    arr << str[0..iteration]
    iteration += 1
  end

  arr
end
