limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"


# The issue with the code is that the limit variable is not available to
# the method definition. Variables outside the method definition are not
# within the method's scope. "Limit" was not passed as an argument to the 
# method either, and therefore the method has no way of accessing the value of
# limit to use. To fix this, I would add limit as a parameter in the method
# definition and pass it as an argument in the method call/invocation.