def multisum(num)
  multiples = []
  (1..num).each do |el|
    multiples << el if (el % 5 == 0 || el % 3 == 0)
  end

  multiples.sum
end

