NUMBERS = {'1'=>1, '2'=>2, '3'=>3, '4'=>4, '5'=>5,
           '6'=>6, '7'=>7, '8'=>8, '9'=>9, '0'=>0 }

def string_to_integer(str)
  converted = str.chars.map do |el|
    NUMBERS[el]
  end

  converted.each_with_index do |el, index|
    converted[index] = el * (10 ** (converted.size - 1 - index))
  end

  converted.sum
end
