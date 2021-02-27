def leap_year?(num)
  (num % 4 == 0 && num % 100 != 0) || (num % 400 == 0)
end

