````ruby
def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)
end

puts 'LAUNCH!'
````

The issue with this code, is that on `line 9` the person is trying to decrement the local variable `counter` by one during each iteration. 

Why it does not work: a local variable initialized in the main method and used as an argument for a method invocation cannot be reassigned from within the method definition (defined on lines 1-3).

The parameter `counter` is not the same variable as the local variable`counter` initialized on line 5 of the main method. Both the parameter`counter` and the local variable `counter` point to the same (immutable) integer object, but when the parameter `counter` is reassigned, it does not reassign the local variable `counter`, nor does it mutate the object that it points to/references.

````ruby
def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  counter -= 1
end

puts 'LAUNCH!'
````

