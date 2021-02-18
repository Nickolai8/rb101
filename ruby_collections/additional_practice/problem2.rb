ages = { "Herman" => 32,
         "Lily" => 30,
         "Grandpa" => 5843,
         "Eddie" => 10,
         "Marilyn" => 22,
         "Spot" => 237 }

# method 1
total_age = 0
ages.each {|k,v| total_age += v}

# method 1.5
total_age = 0
ages.each do |k,v|
  total_age += v
end

# method 2
total_age = 0
ages.values.each {|x| total_age += x}

# method 3
total_age = 0
i = 0
loop do
  break if i >= ages.size
  total_age += ages.values[i]
  i += 1
end

# method 4
total_age = 0
p ages.values.sum {|x| x}