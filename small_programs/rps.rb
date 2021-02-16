possible_choices = ['rock', 'paper', 'scissors']
$user_points = 0
$computer_points = 0

def prompt(msg)
  puts "====> #{msg}"
end

def user_rock(computer)
  if computer == 'paper'
    prompt "Computer picked #{computer}. Computer wins."
    $computer_points += 1
  elsif computer == 'scissors'
    prompt "Computer picked #{computer}. Player wins."
    $user_points += 1
  else
    prompt "Computer picked #{computer}. It's a tie."
  end
end

def user_paper(computer)
  if computer == 'scissors'
    prompt "Computer picked #{computer}. Computer wins."
    $computer_points += 1
  elsif computer == 'rock'
    prompt "Computer picked #{computer}. Player wins."
    $user_points += 1
  else
    prompt "Computer picked #{computer}. It's a tie."
  end
end

def user_scissors(computer)
  if computer == 'rock'
    prompt "Computer picked #{computer}. Computer wins."
    $computer_points += 1
  elsif computer == 'paper'
    prompt "Computer picked #{computer}. Player wins."
    $user_points += 1
  else
    prompt "Computer picked #{computer}. It's a tie."
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
prompt "Welcome to Rock Paper Scissors! Would you like to play? yes or no"
keep_playing = gets.chomp.chars.first

# Game loop
loop do
  break unless keep_playing == 'y'

  # Sets user choice
  user_choice = nil
  loop do
    prompt "Rock, paper, or scissors?"
    user_choice = gets.chomp.downcase
    break if possible_choices.include?(user_choice)
    prompt "Chose one of the given answers:"
  end

  # Sets random choice for computer
  computer_choice = possible_choices.sample

  # Find out the winner
  pick_winner(user_choice, computer_choice)

  # Ask if continue
  loop do
    prompt "Would you like to keep going? yes or no."
    keep_playing = gets.chomp.chars.first
    break if ['y', 'n'].include?(keep_playing)
    prompt "Chose one of the given answers:"
  end
end

# Final Score and winner
prompt "Final score. Player: #{$user_points} Computer: #{$computer_points}"
if $user_points > $computer_points
  prompt "Player wins."
elsif $user_points < $computer_points
  prompt "Computer wins"
else
  prompt "It's a tie."
end
