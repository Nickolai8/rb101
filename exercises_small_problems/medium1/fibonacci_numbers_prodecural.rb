def fibonacci_array(num)
  sequence = [0,1]
  (2..num).each do |i| 
    sequence[i] = sequence[i-1] + sequence[i-2]
  end

  sequence[num]
end
