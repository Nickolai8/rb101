def fibonacci_recursion(num)
  return 0 if num == 0
  return 1 if num == 1
  return fibonacci_recursion(num-1) + fibonacci_recursion(num-2)

end

p fibonacci_recursion(8)