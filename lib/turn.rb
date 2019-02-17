# board = [" "," "," "," "," "," "," "," "," "]
#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#position_taken?
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

#valid_move?
def valid_move?(board, index)
  if index >= 0 && index < 9 && !position_taken?(board,index)
    return true
  else
    return false
  end
end

#input_to_index
def input_to_index(input)
  return input.to_i - 1
end

#move
def move(board, index, character = "X")
  return board[index] = character
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
