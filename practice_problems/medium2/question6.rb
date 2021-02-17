def color_valid(color)
  true if color == "blue" || color == "green"
end

# The reason we can do this is because if the true is not
# triggered by one of the conditionals being true, then the method
# will return 'nil' which counts as a falsy value anyway.