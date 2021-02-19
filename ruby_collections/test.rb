



















# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# vowels = []
# 
# for char in alphabet.chars
#   vowels << char if %w(a e i o u).include?(char)
# end
# 
# p vowels




# def multiply_numbers(num, multiplier)
#   i = 0
# 
#   loop do
#     break if i >= num.size
#     num[i] = num[i] * multiplier
#     i += 1
#   end
# 
#   num
# end
# 
# numbers = [1,3,5,8,100,200000]
# 
# p multiply_numbers(numbers, 10)
# p numbers




# def double_odd_numbers(nums)
#   i = 0
# 
#   loop do
#     break if i >= nums.size
#     nums[i] = (nums[i] * 2) if nums[i] % 2 == 1
#     i += 1
#   end
# 
#   nums
# end
# 
# numbers = [1,2,4,78,99,201,222]
# p double_odd_numbers(numbers)




# def double_odd_numbers(nums)
#   doubled_nums = []
#   i = 0
# 
#   loop do
#     break if i >= nums.size
#     doubled_nums << (nums[i] * 2) if nums[i] % 2 == 1
#     i += 1
#   end
# 
#   doubled_nums
# end
# 
# numbers = [1,2,4,78,99,201,222]
# p double_odd_numbers(numbers)




# def double_numbers(num)
#   i = 0
# 
#   loop do
#     break if i >= num.size
#     num[i] = num[i] * 2
#     i += 1
#   end
# 
#   num
# end
# 
# numbers = [1,3,5,8,100,200000]
# 
# p double_numbers(numbers)
# p numbers




# def double_numbers(num)
#   double_numbers = []
#   i = 0
# 
#   loop do
#     break if i >= num.size
#     double_numbers << num[i] * 2
#     i += 1
#   end
# 
#   double_numbers
# end
# 
# p double_numbers([1,3,5,8,100,200000])




# def select_fruit(fruit_hash)
#   i = 0
#   fruit_keys = fruit_hash.keys
#   selected_keys = {}
#   loop do
#     break if i >= fruit_hash.keys.size
#     if fruit_hash[fruit_keys[i]] == 'Fruit'
#       selected_keys[fruit_keys[i]] = fruit_hash[fruit_keys[i]]
#     end
#     i += 1
#   end
#   selected_keys
# end
# 
# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }
# 
# p select_fruit(produce)