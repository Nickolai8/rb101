def count_occurrences(vehicle_list)
  occurence = {}
  vehicle_list.each {|x| occurence[x] = vehicle_list.count(x)}
  p occurence
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
count_occurrences(vehicles)

# Could have made better by chaining .uniq onto vehicle_list before .each