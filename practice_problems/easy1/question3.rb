# Method 1 (needless gymnastics)
advice = "Few things in life are as important as house training your pet dinosaur."
array = advice.split(' ')
index = array.find_index("important")

if index
  array[index] = "urgent" 
  advice = array.map {|x| x == 'dinosaur.' ? x : x + " "}.join
end

# Method 2
advice = "Few things in life are as important as house training your pet dinosaur."
advice['important'] = 'urgent'
