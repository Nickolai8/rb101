def reverse_words(str)
  return if str.size < 5
  str.strip.chars.reverse.join
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
puts reverse_words('Hey there    ')         # => ereht yeH