hsh = {first: ['the', 'quick'],
       second: ['brown', 'fox'],
       third: ['jumped'],
       fourth: ['over', 'the', 'lazy', 'dog']}
vowels = ['a','e','i','o','u']
vowels_from_words = ''
hsh.each do |k,v|
  v.each do |x|
    x.chars.each do|y|
      vowels_from_words << y if vowels.include?(y)
    end
  end
end
