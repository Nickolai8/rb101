def friday_13th(year)
  thirteenth_of_month = []
  num_fridays = 0

  for month in (1..12)
    thirteenth_of_month << Time.new(year, month, 13)
  end

  thirteenth_of_month.each do |day| 
    num_fridays += 1 if day.friday?
  end

  p num_fridays
end

# input is int
# return is int
# method is non mutating ints are immutable

# examples/rules
# year is greater than 1752 so calendar is gregorian and is valid to all future years

# DS
# need a time object to initialize each year
# need an array to store all values

# alg
# use the parameter integer as an argument to initialize a new time object
# maybe iterate over numbers 1-13 creating a new time object for each
# month of the year
# iterate through the new collection to find out how many days are a friday
# return the number of fridays int
