def ascii_value(str)
  total = str.chars.map { |char| char.ord }
  total.sum
end
