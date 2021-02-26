def diamond(oddnum)
  (1..oddnum).each_with_index do |num, index|
    var = ((index+1) - (oddnum/2 + 1)).abs
    var.times { print ' ' }
    (oddnum - var * 2).times { print '*' }
    puts ''
  end
end

diamond(19)