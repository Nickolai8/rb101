puts "Bill amount: "
bill_total = gets.chomp.to_f
puts "Tip percent: "
tip_percent = gets.chomp.to_f

tip = (bill_total * (tip_percent * 0.01)).round(2)
total = (tip + bill_total).round(2)

puts "The tip is: $#{tip}\nThe total is: $#{total}"