def is_an_ip_number?(num)
  num.to_i >= 0 && num.to_i < 256
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  
  if dot_separated_words.length == 4
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word)
    end
  else
    puts "Invalid number"
    return false
  end
  true
end

p dot_separated_ip_address?("100.0.20")