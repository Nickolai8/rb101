````ruby
def move(n, from_array, to_array)
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']
````

The reason that a `SystemStackError` is the result of calling method `move`, is because `move` is a recursive method that does not have any base cases. Since it lacks any base cases to halt  ongoing recursion, move never stops recursively calling itself, therefore it keeps adding to the stack until the stack limit is reached and the program is exited. To make this program functional, one should create a loop inside the program that runs `n` amount of times, instead of using this infinitely recursive method.

````ruby
def move(n, from_array, to_array)
  n.times do 
  	to_array << from_array.shift
  end
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']
````

