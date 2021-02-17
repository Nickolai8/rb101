# 1
text_to_print = "The Flintstones Rock!"
num_spaces = ""

(1..10).each do
  puts num_spaces + text_to_print
  num_spaces << " "
end

# 2
(1..10).each {|x| puts (" " * x) + text_to_print}