greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# The outcome of the code is { :a => "hi there" }.
# informal_greeting is set to greetings[:a], which is 
# 'hi' and references the object in memory that the key
# ':a' references in the hash greetings. << mutates the caller,
# and since informal_greeting points to the location of the value
# of greetings[:a], the value is modified and therefore the
# original hash object is mutated as well.