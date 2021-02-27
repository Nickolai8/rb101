def word_sizes(str)
  sizes = {}
  str_array = str.split(' ')
  str_array.each do |el|
    if sizes.keys.include?(el.size) then sizes[el.size] += 1
    else sizes[el.size] = 1 end
  end
  sizes
end

