require 'pry'
card_values = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
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
def player_hit!(player, dealer, deck, player_values)
  visible_cards(player, dealer)
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

def dealer_hit!(player, dealer, deck, dealer_values)
  visible_cards(player, dealer)
  new_card = deck.shift
  dealer << new_card
  dealer_values << new_card.split.first
end

def dealer_hit?(points)
  points < 17
end

def starting_points(cards_values)
  points = cards_values.map do |el|
    if %w(Jack Queen King).include?(el) then 10
    elsif el == 'Ace' then 11 # need to fix, pts isnt known yet
    elsif el == 'Ace' then 1
    else el.to_i end
  end
  points.sum
end

def determine_points(cards_values, points)
  new_card = cards_values[-1]
  if %w(Jack Queen King).include?(new_card) then 10
  elsif new_card == 'Ace' && points < 11 then 11 # need to fix, pts isnt known yet
  elsif new_card == 'Ace' then 1
  else new_card.to_i end
end

def update_points(cards_values, points)
  subtract = 0
  cards_values.each do |el|
    subtract += 1 if el == 'Ace'
    break if points + (substract - 10) < 22
  end
  subtract *= -10
end

# create deck, sorts deck
initialize_deck(card_values, suits, main_deck)
main_deck.sort_by! { |_| rand }

# moves cards from deck into hands
player_hand << main_deck.shift(2)
dealer_hand << main_deck.shift(2)
player_hand.flatten!
dealer_hand.flatten!


# extracts cards worth
player_cards_values = player_hand.map { |el| el.split.first }
dealer_cards_values = dealer_hand.map { |el| el.split.first }

# initialize starting points
player_points = starting_points(player_cards_values)
dealer_points = starting_points(dealer_cards_values)

visible_cards(player_hand, dealer_hand)

# player turn
loop do 
  if player_points <= 20 && player_hit? 
    player_hit!(player_hand, dealer_hand, main_deck, player_cards_values)
    visible_cards(player_hand, dealer_hand)
    player_points += determine_points(player_cards_values, player_points)

  else
    break
  end
end

# computer turn
loop do
  if player_points < 21 && dealer_hit?(dealer_points) 
    p "dealer does hit"
    dealer_hit!(player_hand, dealer_hand, main_deck, dealer_cards_values)
    dealer_points += determine_points(dealer_cards_values, dealer_points)
  else
    break
  end
end

# end game display
visible_cards(player_hand, dealer_hand)
puts "Player points: #{player_points}"
puts "Player card values: #{player_cards_values}"
puts "Dealer points: #{dealer_points}"
puts "Dealer card values: #{dealer_cards_values}"











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
