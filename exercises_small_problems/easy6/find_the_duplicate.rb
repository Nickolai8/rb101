def find_dup (arr)
  repeat = ''
  arr.each { |elem| repeat = elem if arr.count(elem) > 1 }
  repeat
end
