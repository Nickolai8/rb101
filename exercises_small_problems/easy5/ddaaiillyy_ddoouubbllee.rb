# First
def crunch(str)
  new_str = ''
  str_array = str.chars
  str_array.each_with_index do |char, index|
    if char != str_array[index + 1] then new_str << char
    else next end
  end
  new_str
end

# Second
def crunch(str)
  new_str = ''
  str_array = str.chars
  str_array.each do |char|
    new_str << char unless char == new_str[-1]
  end
  new_str
end

