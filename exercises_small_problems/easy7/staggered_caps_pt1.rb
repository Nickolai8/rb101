ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

def staggered_case(str)
  spongebob_text = ''
  
  str.chars.each_with_index do |char, index|
    if !ALPHABET.include?(char.downcase) then spongebob_text << char
    elsif index.even? then spongebob_text << char.upcase
    else spongebob_text << char.downcase end
  end
  
  spongebob_text
end
