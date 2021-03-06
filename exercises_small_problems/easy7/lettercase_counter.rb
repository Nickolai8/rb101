ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

def letter_case_count(str)
  upper_lower_neither = {lowercase:0, uppercase:0, neither:0}
  str.chars.each do |char|
    if ALPHABET.upcase.include?(char) then upper_lower_neither[:uppercase] += 1
    elsif ALPHABET.include?(char) then upper_lower_neither[:lowercase] += 1
    else upper_lower_neither[:neither] += 1 end
  end
  p upper_lower_neither
end
