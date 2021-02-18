statement = "The Flintstones Rock"

# method 1
alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
letter_occurence = {}

alphabet.chars.each do |x|
  letter_occurence[x] = statement.count(x) unless statement.count(x) == 0
end

# method 2
letter_occurence = {}

statement.chars.each do |x|
    letter_occurence[x] = statement.count(x) unless x == ' '
end