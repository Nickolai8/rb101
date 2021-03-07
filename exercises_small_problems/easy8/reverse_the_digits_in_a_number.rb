# Method 1
def reversed_number(num)
  num = num.to_s.chars.reverse
  total = 0
  zeroes = 10 ** (num.size - 1)

  num.each do |digit|
    total += digit.to_i * zeroes
    zeroes /= 10
  end

  p total
end

# Method 2
def reversed_number(num)
  num.to_s.reverse.to_i
end


