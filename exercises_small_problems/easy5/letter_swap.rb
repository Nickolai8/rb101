def swap(str)
  new_str = str.split(' ')
  new_str.map! do |el|
    el = el.chars
    first, last = el.shift, el.pop
    el.unshift(last)
    el.append(first)
    el.join
  end
  p new_str.join(' ')
end
