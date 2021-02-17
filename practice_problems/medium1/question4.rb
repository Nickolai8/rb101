def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# The difference between the two is that << mutates the caller, and 
# =(reassignment) does not. The buffer in rolling_buffer1 is mutated with every
# element, so the object stays the same object, just with a different value. 
# The buffer in rolling_buffer2 is not mutated, because =(reassignment) is not
# a destructive method, and therefore a new array object is
# created every time and buffer is binded to that new object instead of 
# altering the old.

