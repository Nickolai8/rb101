def word_lengths(string)
  string.split.map{ |substr| substr + " " + substr.size.to_s }
end






# Method takes a string
# method returns an array that contains every word from the string

# every element of the array must have a space and a number representing
# the word length appended

# assume all words in the argument string are separated by a single space
# assume any substring of non-space chars is a word

# initialize an array to return, and place it at the implicit return location
# inside of the method

# splitting into the right words, so I should be able to aappend stuff now
# by iterating over and add into the new array


p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []