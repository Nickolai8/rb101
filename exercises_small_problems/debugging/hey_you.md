````ruby
def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'
````

The code prints out the string literal object `'HEY you'`, not the string literal object `'HEY YOU'`. On line 2, the `name` parameter has the `String#chars` method called on it, which returns an array of characters made from the original string. This return value (the new array) is a different object than the string literal object that the variable`name` references that was used to create the array. All of the string elements of the array as well are unrelated to the parameter `name`, and the object that it references. 

When methods are chained, they each work off the return value of the previous method. The array that was created by the `String#chars` method is iterated over by the `#each`, and `String#upcase!` is called on each element. While`String#upcase!` is a destructive method, it is being called on each element of the array that was created by `String#chars`, and not the string parameter `name`, therefore the characters of the string literal object that the parameter `name` points to are unaffected. 





````ruby
def shout_out_to(name)
  puts 'HEY ' + name.upcase
end

shout_out_to('you') # expected: 'HEY YOU'
````

