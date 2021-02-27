NUMBERS = {'1'=>1, '2'=>2, '3'=>3, '4'=>4, '5'=>5,
           '6'=>6, '7'=>7, '8'=>8, '9'=>9, '0'=>0 }

def string_to_signed_integer(str)
  sign = nil

  converted = str.chars.map do |el|
    if str[0] == '-' && el == '-' 
      sign = '-'
      nil
    else 
      NUMBERS[el] 
    end
  end
  converted.compact!

  converted.each_with_index do |el, index|
    converted[index] = el * (10 ** (converted.size - 1 - index))
  end

  if sign then converted.sum * -1
  else converted.sum end
end
