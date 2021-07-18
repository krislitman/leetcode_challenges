# On an 8 x 8 chessboard, there is exactly one white rook
# 'R' and some number of white bishops
# 'B', black pawns 'p', and empty squares '.'.

# When the rook moves, it chooses one of four cardinal directions
# (north, east, south, or west), then moves in that direction until
# it chooses to stop, reaches the edge of the board, captures a black pawn,
# or is blocked by a white bishop. A rook is considered attacking a pawn
# if the rook can capture the pawn on the rook's turn.
# The number of available captures for the white rook is
# the number of pawns that the rook is attacking.

# Return the number of available captures for the white rook.

# Input: board =[
  # [".",".",".",".",".",".",".","."],
  # [".",".",".","p",".",".",".","."],
  # [".",".",".","R",".",".",".","p"],
  # [".",".",".",".",".",".",".","."],
  # [".",".",".",".",".",".",".","."],
  # [".",".",".","p",".",".",".","."],
  # [".",".",".",".",".",".",".","."],
  # [".",".",".",".",".",".",".","."]
  # ]
# Output: 3
# Explanation: In this example, the rook is attacking all the pawns.

def num_rook_captures(board)
  return 0 if board.empty? || board.nil?
  rook = find_rook_position(board)
  return attack_vertical(board, rook) + attack_horizontal(board, rook)
end

def attack_vertical(board, rook)
  position = (rook[0] - 1)
  count = 0
  # North
  until position == -1 do
    if board[position][rook[1]] == 'B'
      count += 0
      break
    elsif board[position][rook[1]] == 'p'
      count += 1
      position -= 1
      break
    elsif board[position][rook[1]] == '.'
      position -= 1
      next
    end
  end
  position = (rook[0] + 1)
  # South
  until position == 8 do
    if board[position][rook[1]] == 'B'
      count += 0
      break
    elsif board[position][rook[1]] == 'p'
      count += 1
      position += 1
      break
    elsif board[position][rook[1]] == '.'
      position += 1
      next
    end
  end
  count
end

def attack_horizontal(board, rook)
  row = board[rook[0]]
  position = rook[1] - 1
  count = 0
  # West
  until position == -1 do
    if row[position] == 'B'
      count = 0
      break
    elsif row[position] == 'p'
      count += 1
      position -= 1
      break
    elsif row[position] == '.'
      position -= 1
      next
    end
  end
  position = (rook[1] + 1)
  # East
  until position == 8 do
    if row[position] == 'B'
      count += 0
      break
    elsif row[position] == 'p'
      count += 1
      position += 1
      break
    elsif row[position] == '.'
      position += 1
      next
    end
  end
  count
end

def find_rook_position(board)
  board.each_with_index do |row, index|
    if row.include? "R"
      row.each_with_index do |position, ind|
        return [index, ind] if position == "R"
        next
      end
    else
      next
    end
  end
end

attempt1 = num_rook_captures([[".",".",".",".",".",".",".","."],[".","p","p","p","p","p",".","."],[".","p","p","B","p","p",".","."],[".","p","B","R","B","p",".","."],[".","p","p","B","p","p",".","."],[".","p","p","p","p","p",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."]])

print(attempt1)
# expected: 0

attempt2 = num_rook_captures([[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".","R",".",".",".","p"],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."]])

print(attempt2)
# expected: 3

attempt3 = num_rook_captures([[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".","p",".",".",".","."],["p","p",".","R",".","p","B","."],[".",".",".",".",".",".",".","."],[".",".",".","B",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".",".",".",".",".","."]])

print(attempt3)
# expected: 3

attempt4 = num_rook_captures([[".",".",".",".",".",".","p","."],["p",".",".",".",".",".","R","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".","p","."]])

print(attempt4)
# expected: 3

