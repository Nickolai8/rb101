CONSONANTS = 'bcdfghjklmnpqrstvwxyz'

def double_consonants(str)
  str.chars.map do |char|
    CONSONANTS.include?(char.downcase) ? char * 2 : char
  end.join
end
