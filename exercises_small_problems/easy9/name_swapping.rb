def swap_name(name)
  name = name.split.reverse
  name.join(', ')
end



# method takes a string
# method returns a new string

# need to split string into an array
# need to swap positions in the array
# need to append a comma after the first element in the new array
# after i should join them with a space



p swap_name('Joe Roberts') == 'Roberts, Joe'