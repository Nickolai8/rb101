````ruby
arr = ["9", "8", "7", "10", "11"]
p arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 
````

The issue with the code above, is that `p` binds more strongly to `arr.sort` than the attached `do..end` block. Therefore, `arr.sort` is returned to `p` and the `do..end` block is never actually run. To mitigate this, we can either put parenthesis around the method invocation and the block in order to have that occur before a value is passed to `p`, or we can use `{}` to define the block instead of `do..end` since it has a higher precedence than `do..end` and `p`. If we did that, the `Enumerable#sort` method would actually use the attached block.

````ruby
arr = ["9", "8", "7", "10", "11"]
# Fix 1
p(
arr.sort do |x, y|
    y.to_i <=> x.to_i
  end
)
# Fix 2
p arr.sort { |x, y| y.to_i <=> x.to_i }
````

