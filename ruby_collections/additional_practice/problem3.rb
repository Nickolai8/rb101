# method 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.each {|k,v| ages.delete(k) if v >= 100}

# method 1.5
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.each do |k,v|
  ages.delete(k) if v >= 100
end

# method 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.each_with_index do |(k,v), index|
  # nah
end