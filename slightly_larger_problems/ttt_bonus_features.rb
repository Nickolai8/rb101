# brd.values_at(line[0], line[1], line[2]).count (COMPUTER_MARKER) == 2
# use to check if 2 values are 2 so it choses the last

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
def display_board(choice, user, comp)
  system 'clear'
  puts "Player: #{PLAYER_MARKER}           Computer: #{COMPUTER_MARKER}"
  puts "Player wins: #{user}      Computer wins: #{comp}"
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

def joinor(arr, delimeter=',', last='or')
  final = arr.map { |element| element.to_s }
  final[-1] = final[-2] + " " + last + " " + final.pop if arr.size >= 2
  final.join(delimeter + " ")
end

def player_turn!(brd)
  square = ''
  loop do
    prompt "Chose a square: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    # if brd.keys.include?(square) && brd[square] == ' '
    break if empty_squares(brd).include?(square)
    prompt "Invalid number or Square already taken"
  end

  brd[square] = PLAYER_MARKER
end

def computer_turn!(brd)
  if comp_can_win?(brd)
    comp_can_win!(brd)
  elsif defence_needed?(brd)
    defence_needed!(brd)
  elsif brd[5] == ' '
    brd[5] = COMPUTER_MARKER
  else
    brd[empty_squares(brd).sample] = COMPUTER_MARKER
  end
end

def defence_needed?(brd)
  WINNING_COMBOS.each do |line|
    if (brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 2) &&
       (brd.values_at(line[0], line[1], line[2]).include?(' '))
      return true
    end
  end
  false
end

def defence_needed!(brd)
  defending_index = nil
  WINNING_COMBOS.each do |line|
    if (brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 2) &&
       (brd.values_at(line[0], line[1], line[2]).include?(' '))
      defending_index = line[0] if brd[line[0]] == " "
      defending_index = line[1] if brd[line[1]] == " "
      defending_index = line[2] if brd[line[2]] == " "
    end
  end
  p defending_index
  brd[defending_index] = COMPUTER_MARKER
end

def comp_can_win?(brd)
  WINNING_COMBOS.each do |line|
    if (brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 2) &&
       (brd.values_at(line[0], line[1], line[2]).include?(' '))
      return true
    end
  end
  false
end

def comp_can_win!(brd)
  winning_index = nil
  WINNING_COMBOS.each do |line|
    if (brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 2) &&
       (brd.values_at(line[0], line[1], line[2]).include?(' '))
      winning_index = line[0] if brd[line[0]] == " "
      winning_index = line[1] if brd[line[1]] == " "
      winning_index = line[2] if brd[line[2]] == " "
    end
  end
  p winning_index
  brd[winning_index] = COMPUTER_MARKER
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
  nil
end

def place_piece!(brd, current)
  player_turn!(brd) if current == 'user'
  computer_turn!(brd) if current == 'computer'
end

def alternate_player(current)
  return 'user' if current == 'computer'
  return 'computer' if current == 'user'
end

userwins = 0
compwins = 0
board = ''
current_player = ' '

loop do
  puts "Who should go first, user or computer?"
  current_player = gets.chomp.downcase
  break if ['user', 'computer'].include?(current_player)
  puts "Invalid answer."
end

loop do
  board = initialize_board

  loop do
    display_board(board, userwins, compwins)

    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if board_full?(board) || someone_won?(board)
  end

  display_board(board, userwins, compwins)

  if someone_won?(board)
    prompt "#{detect_winner(board)} wins."
    userwins += 1 if detect_winner(board) == 'Player'
    compwins += 1 if detect_winner(board) == 'Computer'
  else
    prompt "It's a tie."
  end

  break if userwins >= 5 || compwins >= 5
end

display_board(board, userwins, compwins)
prompt "Thanks for playing. Take care!"
