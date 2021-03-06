def swapcase (str)
  new_str = str.chars.map do |char|
    char.downcase == char ? char.upcase : char.downcase
  end.join
end
