````ruby
def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count = 3 ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false
````

The `valid_series?` method returns `true` every single time it is called. The reason it does:

`odd_count = 3` is an assignment statement for local variable `odd_count`. When that assignment statement is put inside a conditional expression, it returns the assigned value of `odd_count` to the conditional expression and the conditional evaluates that value based on its truthiness. Since `odd_count` is assigned to the integer object 3, which has a truthy value, the conditional evaluates the assignment expression to true, and the first expression (the one that precedes the colon `:`) is returned, which is `true`. This is the last line of the method, so `true` is implicitly returned to wherever `valid_series?` was called. 

To fix this, we should change the assignment expression into an equality comparison expression: 

````ruby
def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false
````

