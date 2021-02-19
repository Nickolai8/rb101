def stringy(int)
  string = ""
  original = int
  loop do
    break if int <= 0
    (original - int) % 2 == 0 ? string << '1' : string << '0'
    int -= 1
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
