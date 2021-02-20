munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# method 1
total_male_age = munsters.select {|_,v| v['gender'] == 'male'}
total_male_age.map{ |_,v| v['age']}.sum

# method 2
total_male_age = 0
munsters.each do |k,v|
  total_male_age += v['age'] if v['gender'] == 'male'
end
