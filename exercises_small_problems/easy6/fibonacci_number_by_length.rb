def find_fibonacci_index_by_length(num)
  fib_numbers = [1,1]

  loop do
    break if fib_numbers[-1].to_s.length == num
    fib_numbers << (fib_numbers[-1] + fib_numbers[-2])
  end
  
  fib_numbers.size
end
