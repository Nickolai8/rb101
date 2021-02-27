ALPHANUMERIC = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'

def strip_nonletters(str)
  str.chars.select { |char| ALPHANUMERIC.include?(char)}.join
end

def word_sizes(str)
  sizes = {}
  str_array = str.split(' ')
  str_array.each do |elem|
    el = strip_nonletters(elem)
    if sizes.keys.include?(el.size) then sizes[el.size] += 1
    else sizes[el.size] = 1 end
  end
  sizes
end
