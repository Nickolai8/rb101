def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end



bar(foo)


# The above method would be sort of similar to previous methods. Since "foo" is
# the inner-most function, it would be evaluated first. "foo" in this
# instance has no argument passed to it, therefore its parameter "param"
# would take on its default value of "no". The "no" doesn''t affect the method
# anyway, as the method returns "yes" regardless. From there, the value of
# "yes" would replace "foo" and be used as an argument for the method "bar".
# Since an argument is provided, the "param" parameter would take on that value
# (of "yes"). Since the "param" parameter is "yes" and not "no", the conditional
# expression inside the "bar" ternary operator would evaluate to "false", and 
# therefore trigger the second statement, which is "no". That "no" would be 
# returned, and the program is done.
