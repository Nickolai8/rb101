def running_total(arr)
  total = 0
  arr.map do |el|
    new_el = el + total
    total += el
    new_el
  end
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []