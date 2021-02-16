possible_choices = ['rock', 'paper', 'scissors']
$user_points = 0
$computer_points = 0

def user_rock(computer)
  if computer == 'paper'
    puts "Computer picked #{computer}. Computer wins."
    $computer_points += 1
  elsif computer == 'scissors'
    puts "Computer picked #{computer}. Player wins."
    $user_points += 1
  else
    puts "Computer picked #{computer}. It's a tie."
  end
end

def user_paper(computer)
  if computer == 'scissors'
    puts "Computer picked #{computer}. Computer wins."
    $computer_points += 1
  elsif computer == 'rock'
    puts "Computer picked #{computer}. Player wins."
    $user_points += 1
  else
    puts "Computer picked #{computer}. It's a tie."
  end
end

def user_scissors(computer)
  if computer == 'rock'
    puts "Computer picked #{computer}. Computer wins."
    $computer_points += 1
  elsif computer == 'paper'
    puts "Computer picked #{computer}. Player wins."
    $user_points += 1
  else
    puts "Computer picked #{computer}. It's a tie."
  end
end

def pick_winner(user, computer)
  if user == 'rock'
    user_rock(computer)
  elsif user == 'paper'
    user_paper(computer)
  elsif user == 'scissors'
    user_scissors(computer)
  end
end

# Greeting
puts "Welcome to Rock Paper Scissors! Would you like to play? yes or no"
keep_playing = gets.chomp.chars.first

# Game loop
loop do
  break unless keep_playing == 'y'

  # Sets user choice
  user_choice = nil
  loop do
    puts "Rock, paper, or scissors?"
    user_choice = gets.chomp.downcase
    break if possible_choices.include?(user_choice)
  end

  # Sets random choice for computer
  computer_choice = possible_choices.sample

  # Find out the winner
  pick_winner(user_choice, computer_choice)

  # Ask if continue
  loop do
    puts "Would you like to keep going? yes or no."
    keep_playing = gets.chomp.chars.first
    break if ['y', 'n'].include?(keep_playing)
  end
end

# Final Score and winner
puts "Final score. Player: #{$user_points} Computer: #{$computer_points}"
if $user_points > $computer_points
  puts "Player wins."
elsif $user_points < $computer_points
  puts "Computer wins"
else
  puts "It's a tie."
end
