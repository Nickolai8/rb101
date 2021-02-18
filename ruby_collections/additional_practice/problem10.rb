munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# method 1
munsters.each do |k,v|
  if v['age'] < 18 then v['age_group'] = 'kid'
  elsif v['age'] < 65 then v['age_group'] = 'adult'
  else v['age_group'] = 'senior'
  end
end

# method 2
munsters.each do |k,v|
  if v['age'] >= 65 then v.merge!({'age_group'=>'senior'}) 
  elsif v['age'] >= 18 then v.merge!({'age_group'=>'adult'}) 
  else v.merge!({'age_group'=>'kid'}) 
  end
end







munsters.each do |k,v|
  puts "#{k} #{v}"
end
