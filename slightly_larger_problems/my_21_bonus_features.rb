require 'pry'
card_values = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
suits = %w(Hearts Diamonds Spades Clubs)
main_deck = []
player_hand = []
dealer_hand = []
player_cards_values = []
dealer_cards_values = []
winner = nil
player_points = 0
dealer_points = 0
games_won_player = 0
games_won_dealer = 0
WINNING_SCORE = 21
HIT_UNDER = 17

# creates deck
def initialize_deck(card_values, suits, deck)
  card_values.each do |value|
    suits.each do |suit|
      deck << value + " of " + suit
    end
  end
  deck.sort_by! { |_| rand }
end

# shows dealer card and user hand
def visible_cards(player, dealer)
  system 'clear'
  puts "Dealer has: #{dealer[1]} and #{dealer.size - 1} unknown card(s)"
  puts "You have: #{player.join(', ')}\n\n"
end

# player hits
def player_hit!(player, deck, player_values)
  new_card = deck.shift
  player << new_card
  player_values << new_card.split.first
end

# player wants to hit?
def player_hit?
  hit = false
  loop do
    puts "Player turn. Hit, or stay?"
    player_hit = gets.chomp.downcase
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
  ((dealer < HIT_UNDER) || (player > dealer)) && !(player > WINNING_SCORE)
end

# set points
def points(cards_values)
  aces = cards_values.select { |elem| elem == 'Ace' }
  points = 0
  cards_values.each do |elem|
    if %w(Jack Queen King).include?(elem) then points += 10
    elsif elem == 'Ace' then points += 11
    else points += elem.to_i
    end
  end
  # adjusts for aces. Might split into a dif method but technically 1 thing
  if points > WINNING_SCORE
    loop do
      break if points < WINNING_SCORE || aces.size <= 0
      points -= 10
      aces.pop
    end
  end
  points
end

# find winner
def who_won?(player, dealer)
  if player > WINNING_SCORE then 'dealer'
  elsif dealer > WINNING_SCORE then 'player'
  elsif player > dealer then 'player'
  elsif player < dealer then 'dealer'
  else 'tie' end
end

# print winnter
def display_winner(winner)
  if winner != 'tie' then puts "#{winner} Won\n\n"
  else puts "It's a tie\n\n" end
end

# print victor
def display_victor(player, dealer)
  puts "Player won #{player} games and Dealer won #{dealer} games."
  puts "Player won the set!" if player == 5
  puts "Dealer won the set!" if dealer == 5
end

loop do
  main_deck = []
  player_hand = []
  dealer_hand = []
  player_cards_values = []
  dealer_cards_values = []
  winner = nil


  loop do
    # create deck, sorts deck
    initialize_deck(card_values, suits, main_deck)
    # main_deck.sort_by! { |_| rand }

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

    winner = 'tie' if player_points == WINNING_SCORE && 
                      dealer_points == WINNING_SCORE
    winner = 'player' if player_points == WINNING_SCORE
    winner = 'dealer' if dealer_points == WINNING_SCORE
    break if winner

    # show visible cards at start
    visible_cards(player_hand, dealer_hand)

    # player turn
    loop do
      break unless player_points < WINNING_SCORE
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
      break if player_points == WINNING_SCORE && player_hand.size == 2
      if player_points <= WINNING_SCORE && dealer_hit?(dealer_points, player_points)
        p "dealer does hit"
        dealer_hit!(dealer_hand, main_deck, dealer_cards_values)
        dealer_points = points(dealer_cards_values)
      else
        break
      end
    end

    break
  end

  # end game display
  visible_cards(player_hand, dealer_hand)
  puts "Player points: #{player_points}"
  puts "Player cards: #{player_hand}"
  puts "Dealer points: #{dealer_points}"
  puts "Dealer cards: #{dealer_hand}"

  winner = who_won?(player_points, dealer_points)
  display_winner(winner)

  games_won_player += 1 if winner == 'player'
  games_won_dealer += 1 if winner == 'dealer'

  if games_won_player == 5 || games_won_dealer == 5
    display_victor(games_won_player, games_won_dealer)
    break
  end

  loop do
    puts 'Ready for the next game?'
    answer = gets.chomp[0]
    break if answer == 'y'
    puts "I'll ask again."
  end


end