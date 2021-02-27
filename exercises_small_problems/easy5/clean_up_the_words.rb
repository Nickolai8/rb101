ALPHANUMERIC = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'

def cleanup(str)
  new_str = ''

  str.chars.each_with_index do |char, index|
    if ALPHANUMERIC.include?(char) then new_str << char
    else new_str << ' ' end
  end
  p new_str
  p space_strip(new_str)
end

def space_strip(str)
  new_str = ''
  str.chars.each_with_index do |char, index|
    if char != str.chars[index+1] then new_str << char
    end
  end
  new_str
end

