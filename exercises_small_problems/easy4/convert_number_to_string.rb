NUMBERS = { 1=>"1", 2=>"2", 3=>"3", 4=>"4", 5=>"5",
            6=>"6", 7=>"7", 8=>"8", 9=>"9", 0=>"0" }


def integer_to_string(num)
  array = []
  loop do
    array.unshift(num % 10)
    num /= 10
    break if num == 0
  end

  array.map { |el| NUMBERS[el] }.join
end
