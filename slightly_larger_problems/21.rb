require 'pry'
card_values = %w(Jack Queen King Ace Ace Ace Ace Ace Ace Ace Ace Ace Ace Ace Ace Ace)
suits = %w(Hearts Diamonds Spades Clubs)
main_deck = []
discard_deck = []
player_hand = []
dealer_hand = []
player_cards_values = []
dealer_cards_values = []

player_points = 0
dealer_points = 0

# creates deck
def initialize_deck(card_values, suits, deck)
  card_values.each do |value|
    suits.each do |suit|
      deck << value + " of " + suit
    end
  end
end

# shows dealer card and user hand
def visible_cards(player, dealer)
  system 'clear'
  puts "Dealer has: #{dealer[1]} and #{dealer.size - 1} unknown card(s)"
  puts "You have: #{player.join(", ")}\n\n"
end

# player hits
def player_hit!(player, deck, player_values)
  new_card = deck.shift
  player << new_card
  player_values << new_card.split.first
end

# player wants to hit?
def player_hit?
  hit = nil
  loop do 
    puts "Player turn. Hit, or stay?"
    player_hit = gets.chomp.downcase
    hit = false if player_hit == 'stay' 
    hit = true if player_hit == 'hit'
    break if player_hit == 'stay' || player_hit == 'hit'
  end
  hit
end

# dealer hits
def dealer_hit!(dealer, deck, dealer_values)
  new_card = deck.shift
  dealer << new_card
  dealer_values << new_card.split.first
end

# dealer should hit?
def dealer_hit?(dealer, player)
  (dealer < 17) || (player > dealer) 
end

# points initialize from starting hands
def starting_points(cards_values)
  points = cards_values.map do |el|
    if %w(Jack Queen King).include?(el) then 10
    elsif el == 'Ace' && cards_values.count('Ace') != 2 then 11 
    elsif el == 'Ace' then 1
    else el.to_i end
  end
  points.sum
end

# determines points in hand
def determine_points(cards_values, points)
  new_card = cards_values[-1]
  if %w(Jack Queen King).include?(new_card) then 10
  elsif new_card == 'Ace' && points < 11 then 11 
  elsif new_card == 'Ace' then 1
  else new_card.to_i end
end

# updates points if there are any aces
# def update_points(cards_values, points)
#   subtract = 0
#   cards_values.each do |elem|
#     subtract += 1 if elem == 'Ace'
#     break if points + (subtract - 10) < 22
#   end
#   subtract *= -10
# end

# update points for hands with aces above 21
def update_points(card_values, points)
  subtract = 0
  if points
    subtract -= 10
    card_values
  end

  subtract
  
  
  
  # aces = card_values.select {|elem| elem == 'Ace'}
  # not_aces = card_values.reject {|elem| elem == 'Ace'}
  # subtract = 0
  # loop do
  #   if (points > 21) && (aces.size > 1)
  #     subtract -= 10
  #   end
  #   aces.pop
  #   break if aces.size <= 0
  # end
  subtract
end

# create deck, sorts deck
initialize_deck(card_values, suits, main_deck)
main_deck.sort_by! { |_| rand }

# moves cards from deck into hands
player_hand << main_deck.shift(2)
dealer_hand << main_deck.shift(2)
player_hand.flatten!
dealer_hand.flatten!

# extracts cards in hands worths
player_cards_values = player_hand.map { |el| el.split.first }
dealer_cards_values = dealer_hand.map { |el| el.split.first }

# initialize beginning points
player_points = starting_points(player_cards_values)
dealer_points = starting_points(dealer_cards_values)

# show visible cards at start
visible_cards(player_hand, dealer_hand)

# player turn
loop do 
  break unless player_points < 21
  if player_hit? 
    player_hit!(player_hand, main_deck, player_cards_values)
    visible_cards(player_hand, dealer_hand)
    player_points += determine_points(player_cards_values, player_points)
    player_points += update_points(player_cards_values, player_points)
  else
    break
  end
end

# computer turn
loop do
  break if player_points == 21 && player_hand.size == 2
  if player_points < 22 && dealer_hit?(dealer_points, player_points) 
    p "dealer does hit"
    dealer_hit!(dealer_hand, main_deck, dealer_cards_values)
    dealer_points += determine_points(dealer_cards_values, dealer_points)
    dealer_points += update_points(dealer_cards_values, dealer_points)
  else
    break
  end
end












# end game display
visible_cards(player_hand, dealer_hand)
puts "Player points: #{player_points}"
puts "Player cards: #{player_hand}"
puts "Dealer points: #{dealer_points}"
puts "Dealer cards: #{dealer_hand}"











# determines points in hand FIXME
# def determine_points(cards_values) # use current pts as an argument
#   points = cards_values.map do |el|
#     if %w(Jack Queen King).include?(el) then 10
#     elsif el == 'Ace' then 11 # need to fix, pts isnt known yet
#     elsif el == 'Ace' then 1
#     else el.to_i end
#   end
#   points.sum
# end


# player turn
# def player_hit!(player, dealer, deck, player_values)
#   loop do
#   visible_cards(player, dealer)
#     puts "Player turn. Hit, or stay?"
#     player_hit = gets.chomp.downcase
#     break if player_hit == 'stay'
#     if player_hit == 'hit'
#       new_card = deck.shift
#       player << new_card
#       player_values << new_card.split.first
#     else
#       puts "Invalid choice."
#     end
#   end
# end



# join with and # FIX ME MAYBE
# def joinand (arr)
#   return_str = arr
#   return_str[arr.size - 2] = arr[arr.size - 2, 2].join(" and ")
#   return_str[0, return_str.size - 1].join(", ")
# end
