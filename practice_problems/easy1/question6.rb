# Method 1
famous_words = "seven years ago..."

famous_words.reverse!
famous_words += "Four score and ".reverse
famous_words.reverse!

# Method 2
famous_words = "seven years ago..."

famous_words = "Four score and " + famous_words

# Method 3
famous_words = "seven years ago..."

famous_words.prepend("Four score and ")