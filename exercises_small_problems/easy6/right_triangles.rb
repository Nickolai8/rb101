def triangle(num)
  i = 0
  loop do
    break if i > num
    puts ' ' * (num - i) + '*' * i
    i += 1
  end
end

triangle(9)
