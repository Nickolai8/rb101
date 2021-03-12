def anagrams(words)
  ordered_letters = words.map{ |word| word.chars.sort.join }
  occurences = ordered_letters.map do |word|
    [word, ordered_letters.count(word)] if ordered_letters.count(word) > 1
  end.to_h

  anagrams = occurences.map do |combo, count|
    words.map{ |word| word if word.chars.sort.join == combo }.compact
  end

  anagrams
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

p anagrams(words)


# input is an array
# outpuit is a new array in which certain words fit criterion


# create a new array inside method
# fill array with all the words of original array, but with the letters sorted
# count the number of elements that repeat/arent unique, those are anagrams

# create another array that takes 