def remove_vowels(arr)
  arr.each { |elem| elem.gsub!(/[aeiouAEIOU]/, '') }
end

