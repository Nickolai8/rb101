SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
WINNING_SCORE = 21
HIT_UNDER = 17

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > WINNING_SCORE
  end

  sum
end

def busted?(pts)
  pts > WINNING_SCORE
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(player, dealer)
  if player > WINNING_SCORE
    :player_busted
  elsif dealer > WINNING_SCORE
    :dealer_busted
  elsif dealer < player
    :player
  elsif dealer > player
    :dealer
  else
    :tie
  end
end

def display_result(player, dealer)
  result = detect_result(player, dealer)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def grand_output (player_cards,player_points, dealer_cards, dealer_points )
  puts "=============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{dealer_points}"
  prompt "Player has #{player_cards}, for a total of: #{player_points}"
  puts "=============="
end

prompt "Welcome to Twenty-One!"

loop do
  # initialize vars
  player_wins = 0
  dealer_wins = 0

  loop do
    break if player_wins >= 5 || dealer_wins >= 5
    # initialize vars
    deck = initialize_deck
    player_cards = []
    dealer_cards = []
    player_points = 0
    dealer_points = 0


    # initial deal
    2.times do
      player_cards << deck.pop
      dealer_cards << deck.pop
    end

    player_points = total(player_cards)
    dealer_points = total(dealer_cards)

    prompt "Dealer has #{dealer_cards[0]} and ?"
    prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a total of #{player_points}."

    # player turn
    loop do
      player_turn = nil
      loop do
        prompt "Would you like to (h)it or (s)tay?"
        player_turn = gets.chomp.downcase
        break if ['h', 's'].include?(player_turn)
        prompt "Sorry, must enter 'h' or 's'."
      end

      if player_turn == 'h'
        player_cards << deck.pop
        prompt "You chose to hit!"
        prompt "Your cards are now: #{player_cards}"
        player_points = total(player_cards)
        prompt "Your total is now: #{player_points}"
      end

      break if player_turn == 's' || busted?(player_points)
    end

    if busted?(player_points)
      grand_output(player_cards, player_points, dealer_cards, dealer_points)
      display_result(player_points, dealer_points)
      dealer_wins += 1
      next
    else
      prompt "You stayed at #{player_points}"
    end

    # dealer turn
    prompt "Dealer turn..."

    loop do
      break if dealer_points >= HIT_UNDER

      prompt "Dealer hits!"
      dealer_cards << deck.pop
      prompt "Dealer's cards are now: #{dealer_cards}"
      dealer_points = total(dealer_cards)
    end

    if busted?(dealer_points)
      prompt "Dealer total is now: #{dealer_points}"
      grand_output(player_cards, player_points, dealer_cards, dealer_points)
      display_result(player_points, dealer_points)
      player_wins += 1
      next
    else
      prompt "Dealer stays at #{dealer_points}"
    end

    # both player and dealer stays - compare cards!
    grand_output(player_cards, player_points, dealer_cards, dealer_points)

    display_result(player_points, dealer_points)

    player_wins += 1 if player_points > dealer_points
    dealer_wins += 1 if dealer_points > player_points
  end

# winner
if player_wins > dealer_wins then winner = 'Player'
else winner = 'Dealer' end
# ending prompt
prompt "Thank you for playing Twenty-One! Good bye!"
prompt "Player wins: #{player_wins}     Dealer wins: #{dealer_wins}"
prompt "#{winner} is the winner!".upcase

  break unless play_again?
end 

# 1)
# to keep the score continuously updated, it must update for any player
# whenever they decide to hit.

# 2)
# I honestly can't tell. The only difference I notice is the last one
# not being used with a ternary operator like the other two. It is either
# break or not, the others are next iteration or not. The last one skips
# nothing where as the first two 'next' the remaining code in the loop.

# 3-5 in code