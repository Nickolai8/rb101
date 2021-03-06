ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

def staggered_case(str)
  every_other = 0 

  str.chars.map do |char|
    if !ALPHABET.include?(char.downcase)
      char
    elsif every_other.even?
      every_other += 1
      char.upcase
    else 
      every_other += 1 
      char.downcase
    end
  end.join
end
