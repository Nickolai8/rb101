def real_palindrome?(str)
  forwards = str.chars.select{|char| char.match(/^[[:alpha:]]$/) }
  backwards = str.reverse.chars.select{ |char| char.match(/^[[:alpha:]]$/) }

  forwards.join.downcase == backwards.join.downcase
end
