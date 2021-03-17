````ruby
def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
````

The issue with the `neutralize` method, is that while it is iterating over the array object that the local variable`words` references/points to, it is deleting elements. When iterating over a collection starting from the 0th index to the last, if the current element in the collection is deleted, every element that hasn't been iterated over yet shifts backward one index space. This is an issue because the element that would have been iterated next, and has not been iterated over yet, now occupies the index position of the recently deleted element, and is never iterated over because iteration goes over the indexes of a collection (and not the elements specifically). One better way to do this would be to reassign 'negative' words to the value `nil` and then compact the array after to remove them, like such:

````ruby
def neutralize(sentence)
  words = sentence.split(' ')
  words.each_with_index do |word, index|
    words[index] = nil if negative?(word)
  end.compact

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
````

