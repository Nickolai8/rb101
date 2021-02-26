def fibonacci_last(num)
  sequence = [0,1]
  (2..num).each do |i| 
    sequence[i] = sequence[i-1] % 10 + sequence[i-2] % 10
  end

  sequence[num] % 10
end

p fibonacci_last(123456789)

# hash pattern
def fibonacci_last_hash(num)
  repeating_last = {0=>0,1=>1,2=>1,3=>2,4=>3,5=>5,6=>8,7=>3,8=>1,9=>4,
                    10=>5,11=>9,12=>4,13=>3,14=>7,15=>0,16=>7,17=>7,18=>4,19=>1,
                    20=>5,21=>6,22=>1,23=>7,24=>8,25=>5,26=>3,27=>8,28=>1,29=>9,
                    30=>0,31=>9,32=>9,33=>8,34=>7,35=>5,36=>2,37=>7,38=>9,39=>6,
                    40=>5,41=>1,42=>6,43=>7,44=>3,45=>0,46=>3,47=>3,48=>6,49=>9,
                    50=>5,51=>4,52=>9,53=>3,54=>2,55=>5,56=>7,57=>2,58=>9,59=>1,
                    }
  pattern = num % 60

  repeating_last[pattern]
end

p fibonacci_last_hash(123456789987745)