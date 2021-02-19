a = %w(a b c d e)
# puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }


# 1) IndexError exception (because the index lies outside of the array bounds)
# 2) 'beats me' (because the first argument, the provided index, is out of the
# array bounds, the second argument is returned instead) 
# 3) 49 (because the first argumen,the provided index, is out of the array
# bounds, the block is executed because index argument is invalid)