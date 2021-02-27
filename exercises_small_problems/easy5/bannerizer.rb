def print_in_box(str)
  str_length = str.chars.length

  puts '+' + '-' * str_length + '+'
  puts '|' + ' ' * str_length + '|'
  puts '|' + str + '|'
  puts '|' + ' ' * str_length + '|'
  puts '+' + '-' * str_length + '+'
end

print_in_box('To boldly go where no one has gone before.')
