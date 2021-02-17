possible_choices = ['rock', 'paper', 'scissors', 'lizard', 'spock']
abbreviated_choices = ['r', 'p', 's', 'l', 'k']
$user_points = 0
$computer_points = 0

def prompt(msg)
  puts "====> #{msg}"
end

def user_rock(computer)
  if computer == 'paper' || computer == 'spock'
    prompt "Computer picked #{computer}. Computer wins."
    $computer_points += 1
  elsif computer == 'scissors' || computer == 'lizard'
    prompt "Computer picked #{computer}. Player wins."
    $user_points += 1
  else
    prompt "Computer picked #{computer}. It's a tie."
  end
end

def user_paper(computer)
  if computer == 'scissors' || computer == 'lizard'
    prompt "Computer picked #{computer}. Computer wins."
    $computer_points += 1
  elsif computer == 'rock' || computer == 'spock'
    prompt "Computer picked #{computer}. Player wins."
    $user_points += 1
  else
    prompt "Computer picked #{computer}. It's a tie."
  end
end

def user_scissors(computer)
  if computer == 'rock' || computer == 'spock'
    prompt "Computer picked #{computer}. Computer wins."
    $computer_points += 1
  elsif computer == 'paper' || computer == 'lizard'
    prompt "Computer picked #{computer}. Player wins."
    $user_points += 1
  else
    prompt "Computer picked #{computer}. It's a tie."
  end
end

def user_spock(computer)
  if computer == 'paper' || computer == 'lizard'
    prompt "Computer picked #{computer}. Computer wins."
    $computer_points += 1
  elsif computer == 'rock' || computer == 'scissors'
    prompt "Computer picked #{computer}. Player wins."
    $user_points += 1
  else
    prompt "Computer picked #{computer}. It's a tie."
  end
end

def user_lizard(computer)
  if computer == 'rock' || computer == 'scissors'
    prompt "Computer picked #{computer}. Computer wins."
    $computer_points += 1
  elsif computer == 'paper' || computer == 'spock'
    prompt "Computer picked #{computer}. Player wins."
    $user_points += 1
  else
    prompt "Computer picked #{computer}. It's a tie."
  end
end

def pick_winner(user, computer)
  if user == 'rock' || user == 'r'
    user_rock(computer)
  elsif user == 'paper' || user == 'p'
    user_paper(computer)
  elsif user == 'scissors' || user == 's'
    user_scissors(computer)
  elsif user == 'lizard' || user == 'l'
    user_lizard(computer)
  elsif user == 'spock' || user == 'k'
    user_spock(computer)
  end
end

def declare_winner(user, computer)
  prompt  "FINAL SCORE Player: #{user} Computer: #{computer}"
  if user > computer
    prompt "Player wins."
  elsif user < computer
    prompt "Computer wins"
  else
    prompt "It's a tie."
  end
end

# Greeting
introduction = <<-MSG
"Welcome to Rock Paper Scissors Lizard Spock!
Would you like to play? yes or no"
MSG
prompt(introduction)
keep_playing = gets.chomp.chars.first

# Keep playing loop
loop do
  break unless keep_playing == 'y'

  # Game loop
  loop do
    break if ($user_points >= 5) || ($computer_points >= 5)

    # Sets user choice
    user_choice = nil
    loop do
      prompt "Rock(r), paper(p), scissors(s), lizard(l), or Spock(k)?"
      user_choice = gets.chomp.downcase
      break if possible_choices.include?(user_choice) ||
               abbreviated_choices.include?(user_choice)
      prompt "Chose one of the given answers:"
    end

    # Sets computer
    computer_choice = possible_choices.sample

    # Find out the winner
    pick_winner(user_choice, computer_choice)
  end

  # Declare winner of game, reset points
  declare_winner($user_points, $computer_points)
  $user_points = 0
  $computer_points = 0

  # Ask if continue
  loop do
    prompt "Would you like to keep going? yes or no."
    keep_playing = gets.chomp.chars.first
    break if ['y', 'n'].include?(keep_playing)
    prompt "Chose one of the given answers:"
  end
end

prompt("Have a nice day.")
