munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

# In this instance, the family data is mutated. The reason is that 
# although =(reassignment) is never destructive, the reassignment is 
# happening to an element of an array object, and therefore the original 
# array object is being altered/mutated and so the method is destructive.
# Reassignment is never destructive to the object it is changing, however
# it is destructive to the container object that holds the object that is
# being reassigned.
