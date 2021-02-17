if false
  greeting = "hello world"
end

greeting
p greeting

# when greeting is referenced, I expect it to be undefined and therefore
# raise an error. It is impossible to initialize it because 'if false'
# will always return false.

# However, when I ran the code I was surprised that greeting was 
# initialized to nil. So even when an variable is set to initialize
# inside of an if else statement, if the code is never run it just
# initializes the variable to nil.