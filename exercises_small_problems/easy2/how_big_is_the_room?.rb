SQUARE_METER_TO_SQUARE_FEET = 10.7639

puts "Length of room (in meters)?"
length_room = gets.chomp

puts "Width of room (in meters)?"
width_room = gets.chomp

square_meters = length_room.to_f * width_room.to_f
square_feet = square_meters.to_f * SQUARE_METER_TO_SQUARE_FEET

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)"
# need to find a way to reduce the length of the line, goes over 80 chars