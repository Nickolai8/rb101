INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_COMBOS = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                  [1, 4, 7], [2, 5, 8], [3, 6, 9],
                  [1, 5, 9], [3, 5, 7]]

def prompt(str)
  puts "====> #{str}"
end

# rubocop:disable Metrics/AbcSize
def display_board(choice)
  system 'clear'
  puts "Player: #{PLAYER_MARKER}     Computer: #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |    "
  puts "  #{choice[1]}  |  #{choice[2]}  |  #{choice[3]}  "
  puts "     |     |    "
  puts "-----+-----+-----"
  puts "     |     |    "
  puts "  #{choice[4]}  |  #{choice[5]}  |  #{choice[6]}  "
  puts "     |     |    "
  puts "-----+-----+-----"
  puts "     |     |    "
  puts "  #{choice[7]}  |  #{choice[8]}  |  #{choice[9]}  "
  puts "     |     |    "
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |key| brd[key] == INITIAL_MARKER }
end

def player_turn!(brd)
  square = ''
  loop do
    prompt "Chose a square #{empty_squares(brd).join(', ')}"
    square = gets.chomp.to_i
    # if brd.keys.include?(square) && brd[square] == ' '
    break if empty_squares(brd).include?(square)
    prompt "Invalid number or Square already taken"
  end
  brd[square] = PLAYER_MARKER
end

def computer_turn!(brd)
  brd[empty_squares(brd).sample] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).size == 0
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_COMBOS.each do |line|
    if brd.values_at(line[0], line[1], line[2]).all?(PLAYER_MARKER)
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).all?(COMPUTER_MARKER)
      return 'Computer'
    end
  end
  # brd.values_at(line[0], line[1], line[2]).count (COMPUTER_MARKER) == 3
  nil
end

# outer loop
loop do
  board = initialize_board
  display_board(board)

  # inner loop
  loop do
    display_board(board)

    player_turn!(board)
    break if board_full?(board) || someone_won?(board)

    computer_turn!(board)
    break if board_full?(board) || someone_won?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} wins."
  else
    prompt "It's a tie."
  end

  keep_playing = ''
  loop do
    prompt "Play again? (yes or no)"
    keep_playing = gets.chomp.downcase[0]
    break if %w(y n).include?(keep_playing)
  end

  break if keep_playing == 'n'
end

prompt "Thanks for playing. Take care!"
