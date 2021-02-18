# method 1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flint_hash = {}

flintstones.each_with_index do |val,index|
  flint_hash[val] = index
end

# method 1.5
flint_hash = {}
flintstones.each_with_index {|val, index| flint_hash[val] = index}

# method 2
flint_hash = {}
i = 0
loop do
  break if i >= flintstones.size
  flint_hash[flintstones[i]] = i
  i += 1
end

# method 3, iterating while mutating, works because I went backward
# but still back practice
flint_hash = {}
i = flintstones.size
loop do
  break if i <= 0
  flint_hash[flintstones.pop] = i
  i -= 1
end

p flint_hash.reverse