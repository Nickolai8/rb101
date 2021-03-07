def fizzbuzz(start_num, end_num)
  arr = []
  (start_num..end_num).each do |num|
    if num % 15 == 0 then arr << 'fizzbuzz'
    elsif num % 3 == 0 then arr << 'fizz'
    elsif num % 5 == 0 then arr << 'buzz'
    else arr << num end
  end
  arr
end

def fizzbuzz(start_num, end_num)
  (start_num..end_num).map do |num|
    if num % 15 == 0 then 'fizzbuzz'
    elsif num % 3 == 0 then 'fizz'
    elsif num % 5 == 0 then 'buzz'
    else num end
  end
end









p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
# so take both numbers
# iterate through the numbers
# put out all numbers unless divisible by 3, and or 5