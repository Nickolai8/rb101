# Observational.

# The key takeaway is that the variables reference/are bound to the exact
# same object before and after the method is invoked. Methods inside the
# method that actually mutate the object in memory will have a lasting
# effect, where as reassignment will just reassign the copy variables
# that are local to the method definition.