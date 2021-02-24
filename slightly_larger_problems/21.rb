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

# set points
def points(cards_values)
  aces = cards_values.select { |elem| elem == 'Ace'}
  points = 0
  cards_values.each do |elem|
    if %w(Jack Queen King).include?(elem) then points += 10 
    elsif elem == 'Ace' then points += 11 
    else points += elem.to_i
    end
  end

  if points > 21
    loop do
      break if points < 21 || aces.size <= 0
        points -= 10
        aces.pop
        p aces 
    end
  end
  points
end

# def aces_adjust(cards_values, points)

# end

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
player_points = points(player_cards_values)
dealer_points = points(dealer_cards_values)

# show visible cards at start
visible_cards(player_hand, dealer_hand)

# player turn
loop do 
  break unless player_points < 21
  if player_hit? 
    player_hit!(player_hand, main_deck, player_cards_values)
    visible_cards(player_hand, dealer_hand)
    player_points = points(player_cards_values)
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
    dealer_points = points(dealer_cards_values)
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
