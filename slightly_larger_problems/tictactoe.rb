def prompt(str)
  puts "=====> #{str}"
end

def display(board)
  board.each do |row|
    row.each { |element| print element + '|' }
    print "\n"
  end
end

def computer_turn(board)
  loop do
    row = [0, 1, 2].sample
    column = [0, 1, 2].sample
    unless board[row][column] == "   "
      next
    end
    board[row][column] = " X "
    break
  end
end

def user_turn(board)
  loop do
    prompt "Pick a row, 1 through 3"
    row = gets.chomp.to_i - 1
    prompt "Pick a column, 1 through 3"
    column = gets.chomp.to_i - 1

    unless board[row][column] == "   "
      prompt "Please pick an empty spot."
      next
    end
    board[row][column] = " O "
    break
  end
end

def winner?(board)
  winner = false

  sq1 = board[0][0]
  sq2 = board[0][1]
  sq3 = board[0][2]
  sq4 = board[1][0]
  sq5 = board[1][1]
  sq6 = board[1][2]
  sq7 = board[2][0]
  sq8 = board[2][1]
  sq9 = board[2][2]

  lines = [
    [sq1, sq2, sq3],
    [sq4, sq5, sq6],
    [sq7, sq8, sq9],
    [sq1, sq4, sq7],
    [sq2, sq5, sq8],
    [sq3, sq6, sq9],
    [sq1, sq5, sq9],
    [sq3, sq5, sq7]
  ]

  lines.each do |combination|
    if combination.all?(" X ")
      winner = 'computer'
      break
    elsif combination.all?(" O ")
      winner = 'user'
      break
    end
  end

  winner
end

def tie?(board)
  empty_slots = board.select do |row|
    false if row.include?("   ")
  end
  false if empty_slots.empty?
end

def display_winner(winner)
  prompt "#{winner} wins!"
end

def display_tie
  prompt "Tie game."
end

def continue?
  yes_or_no = ''
  loop do
    prompt "Would you like to continue? (yes or no)"
    yes_or_no = gets.chomp.downcase[0]
    break if yes_or_no == 'y' || yes_or_no == 'n'
  end
  yes_or_no
end

def new_game(board)
  board.each do |row|
    row.map! { |_| "   " }
  end
end

board = [
  ["   ", "   ", "   "],
  ["   ", "   ", "   "],
  ["   ", "   ", "   "]
]
display(board)
winner = false
tie = false
continue = 'y'
user_win = 0
comp_win = 0

# loop start
loop do
  if (winner) || (tie)
    new_game(board)
  end

  # user mark square
  prompt "Mark your square please."
  user_turn(board)
  prompt "User marks..."
  display(board)

  # check if winner (first)
  winner = winner?(board)
  tie = tie?(board) unless winner == true

  # computer mark square
  prompt "Computer marks..."
  computer_turn(board)
  display(board)

  # check if winner (second)
  winner = winner?(board)
  tie = tie?(board) unless winner == true

  # if winner, display winner, then ask if play again (no = break loop)
  if winner
    display_winner(winner)
    continue = continue?
    comp_win += 1 if winner == 'computer'
    user_win += 1 if winner == 'user'
  end

  # if tie, display tie, then ask if play again (no = break loop)
  if tie
    display_tie
    continue = continue = continue?
  end

  # loop end
  break if continue == 'n' || comp_win == 5 || user_win == 5
end
