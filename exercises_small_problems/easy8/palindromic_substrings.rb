def substrings(str)
  arr = []
  start = 0

  str.size.times do

    iteration = start
    (str.size - start).times do
      arr << str[start..iteration]
      iteration += 1
    end

    start += 1
  end

  arr
end

def palindromes(str)
  arr = substrings(str)
  arr.select { |elem| elem == elem.reverse && elem.size > 1 }
end

