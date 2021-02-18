words = "the flintstones rock"

# method 1
title_words = []
words.split(' ').each do |x|
  title_words << x.capitalize + " "
end

title = title_words.join.rstrip

# method 2
words = words.split.each{|x| x.capitalize! << " "}.join.rstrip

