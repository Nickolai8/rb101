def is_odd?(int)
  int.abs % 2 == 0
end

p is_odd?(-17)
p is_odd?(0)
p is_odd?(900)