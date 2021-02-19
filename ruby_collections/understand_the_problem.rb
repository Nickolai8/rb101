# input: string         output: array of substrings
# rules:
#     explicit:
#       -palindrome words are case sensitive. A =/= a
#        
#       
# 
#     implicit:
#       -all chars in string converted to lowercase
#       -empty string will return empty array
#       -can pull multiple out of the same word. All variations/depth,
#         as long as the center letters are from the exact center
#       -returns an array of palindromes from word
# 
# 
2 = 2
4 6 = 10
8 10 12 = 30
14 16 18 20 = 68
22 24 26 28 30 = 130

# consistently find number starting each row
# add to last number in row and divide by 2
# mulptiply that number by the length of the row

so n(n-1) + 2 to find starting number of each row where n is the row number
then since we have the starting number and the number of numbers in the
row which we already know are incremented by +2 every number

y = [2((n(n-1)+2) + 2*(n-1)))/2] * n
n = row number

# This took ~10 min, and I've never used this formula before.
# I might be decent at math conceptually. Probably will help in the future
# When I have to think about the code, really helped to draw
# the numbers out like that so I could get a physical look at the 
# problem, but also good to think about things programatically in case
# I can't pull a formula out of thin air.
#
# If implementing a data structure solution, could use formula to just
# find the first number, and then form an array using a loop and adding
# an iterator that jumps by 2 to increment the value for each object in
# the array. 