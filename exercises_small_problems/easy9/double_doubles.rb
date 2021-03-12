def twice(num)
  check = num.to_s
  num *= 2 unless check[0..check.size/2 - 1] ==
                  check[check.size/2..-1] &&
                  check.size > 1
  num
end

# takes an int
# returns an int

# double = even num of digits, left side digits = right side digits
# [0,size/2-1][size/2,-1]

# double numbers remain the same
# non double numbers are doubled

# convert to string first, and test sides

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10