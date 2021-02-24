card_values = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
suites = %w(h d s c)
deck = []
discard_deck = []
player_hand = []
dealer_hand = []
player_card_value = []
dealer_card_value = []

player_points = 0
dealer_points = 0

card_values.each do |value|
  suites.each do |suit|
    deck << suit + " " + value
  end
end

deck.sort_by! { |_| rand }

# value = deck[32][1,2]

player_hand << deck.shift(2)
dealer_hand << deck.shift(2)
player_hand.flatten!
dealer_hand.flatten!

player_card_value = player_hand.map { |element| element[2, element.size - 1] }
dealer_card_value = dealer_hand.map { |element| element[2, element.size - 1] }

p player_hand.reverse

puts "Your cards: #{player_card_value.to_s}"
puts "Dealers visible card: #{[dealer_card_value[1]]}"



