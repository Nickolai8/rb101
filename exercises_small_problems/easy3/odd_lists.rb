def oddities(arr)
  new_arr = []
  arr.each_with_index do |elem, index|
    new_arr << elem if index % 2 == 0
  end
  new_arr
end

def evenities(arr)
  new_arr = []
  arr.each_with_index do |elem, index|
    new_arr << elem if index % 1 == 0
  end
  new_arr
end

def oddities_select(arr)
  i = -1
  arr.select do |elem|
    i += 1
    i.even?
  end
end

def oddities_map(arr)
  i = -1
  new_arr = arr.map do |elem|
    i += 1
    if i.even? then elem
    else nil end
  end
  new_arr.compact
end

def oddities_loop(arr)
  even_indexes = []
  i = 0
  loop do 
    even_indexes << arr[i] if i.even?
    i += 1
    break if i >= arr.size
  end
  even_indexes.compact
end
