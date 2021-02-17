
def valid_number?(num)
  if num.to_f.to_s == num
    puts "valid"
  else
    puts "lol"
  end
end


float = "300.5"

puts float
puts float.to_f
puts float.to_f.to_s

float.to_f.to_s == float ? (puts "equal") : nil

puts valid_number?(float)