def block_word?(str)
  blocks = { 'B'=>'O', 'X'=>'K', 'D'=>'Q', 'C'=>'P', 'N'=>'A',
             'G'=>'T', 'R'=>'E', 'F'=>'S', 'J'=>'W', 'H'=>'W',
             'V'=>'I', 'L'=>'Y', 'Z'=>'M' }
  reverse_blocks = blocks.map do |letter1, letter2|
    [letter2, letter1]
  end.to_h

  block_letters = str.upcase.chars.map do |letter| 
  [letter, blocks[letter], reverse_blocks[letter]] 
  end.flatten.compact

  block_letters.uniq == block_letters
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true





# input string
# output boolean
# non mutating

# method returns true if word passed in can be spelled from blocks
# method returns false if it cannot
# each block has 2 letters
# can only use each letter once 
# lowercase letters in input will be counted as upper case. The word is what
# counts, not the case.

# hash since key value

# create hash of key value pairs inside method
# create reverse hash of key value pairs from first hash 
# create array from keys and values of letters needed and paired block letters
# check to see if array has all unique values or if theres any overlap