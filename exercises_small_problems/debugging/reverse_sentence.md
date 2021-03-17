````ruby
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = words[i] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
````

The cause for error in this code is `line 7`. `reversed_words = words[i] + reversed_words` is attempting to add an element of the local variable `words` to the local variable `reversed_words`. `reversed_words` and `words` both point to array objects. Each pointer of the array object that`words` points to is a string literal object. Attempting the expression `reversed_words = words[i] + reversed_words`  is trying to add an array object to a string literal object, which Ruby cannot do. To fix it, we should change the `reversed_words = words[i] + reversed_words`  expression to `reversed_words.unshift(words[i])` .

````ruby
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words.unshift(words[i])
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
````

