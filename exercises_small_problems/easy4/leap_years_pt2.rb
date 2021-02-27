def leap_year?(num)
  if num < 1752 then num % 4 == 0
  else (num % 4 == 0 && num % 100 != 0) || (num % 400 == 0) end
end
