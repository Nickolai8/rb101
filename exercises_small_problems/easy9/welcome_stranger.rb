def greetings(arr, hash)
  full_name = arr.join(' ')
  "Hello, #{full_name}! Nice to have a " +
  "#{hash[:title]} #{hash[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })





# method takes an array and a hash
# method should return a string object

# greeting must contain each element of an array and all together
# the elements represent a name
# the hash contains a :title key and an :occupation key to reference
# the title and occupation of the person.

# need to iterate over array to create a single object of their full name

# hash size is always 2, so i can leave it as is and reference
# it like that