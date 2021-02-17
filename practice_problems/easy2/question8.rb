# 1
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!("Few things in life are as important as ")

# 2
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(/Few.*as /)
