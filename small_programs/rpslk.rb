possible_choices = ['rock', 'paper', 'scissors', 'lizard', 'spock']
abbreviated_choices = ['r', 'p', 's', 'l', 'k']
user_beats = {
  'rock' => ['lizard', 'scissors'],
  'r' => ['lizard', 'scissors'],
  'paper' => ['rock', 'spock'],
  'p' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  's' => ['paper', 'lizard'],
  'lizard' => ['paper', 'spock'],
  'l' => ['paper', 'spock'],
  'spock' => ['rock', 'scissors'],
  'k' => ['rock', 'scissors']
}

$user_points = 0
$computer_points = 0

def pick_winner(user, computer, user_win)
  if user == computer
    prompt("tie")
  elsif user_win.include?(computer)
    prompt("user wins")
    $user_points += 1
  else
    prompt("computer wins")
    $computer_points += 1
  end
end

def prompt(msg)
  puts "====> #{msg}"
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
    pick_winner(user_choice, computer_choice, user_beats[user_choice])
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
