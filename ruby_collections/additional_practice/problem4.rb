ages = { "Herman" => 32,
         "Lily" => 30,
         "Grandpa" => 5843,
         "Eddie" => 10,
         "Marilyn" => 22,
         "Spot" => 237 }

# method 1
min_age = ages.values.first
ages.each {|k,v| min_age = v if v < min_age}

# method 1.5
min_age = ages.values.first
ages.each do |k,v|
  min_age = v if v < min_age
end

# method 2
ages.values.min

# method 3
ages.values.sort[0]
