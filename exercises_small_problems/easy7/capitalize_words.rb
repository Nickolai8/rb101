def word_cap(str)
  new_str = str.split.map { |elem| elem.capitalize }.join(' ')
end
