def halvsies(arr)
  first = []
  second = []

  arr.each_with_index do |elem, index|
    if index < arr.size / 2.0 then first << elem 
    else second << elem end
  end
  
  p [first, second]
end
