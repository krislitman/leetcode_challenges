# According to Wikipedia's article: "The Game of Life, also known simply as Life, is a cellular automaton devised by the British mathematician John Horton Conway in 1970."

# The board is made up of an m x n grid of cells, where each cell has an initial state: live (represented by a 1) or dead (represented by a 0). Each cell interacts with its eight neighbors (horizontal, vertical, diagonal) using the following four rules (taken from the above Wikipedia article):

# Any live cell with fewer than two live neighbors dies as if caused by under-population.
# Any live cell with two or three live neighbors lives on to the next generation.
# Any live cell with more than three live neighbors dies, as if by over-population.
# Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.
# The next state is created by applying the above rules simultaneously to every cell in the current state, where births and deaths occur simultaneously. Given the current state of the m x n grid board, return the next state.

def game_of_life(board)
    c = 0
    ro = 0
    new_board = board.map do |b|
        # Grab last and next rows
        l = board[c - 1]
        n = board[c + 1] || [0, 0, 0]

        # check & count neighboors for each element of row
        b = b.map do |i|
            if ro == 0
                v = (l[0..1].sum + b[1] + n[0..1].sum) rescue nil
                if v < 2 || v > 3
                    i = 0
                elsif v == 3
                    i = 1
                end
            elsif ro == 1
                v = (l.sum + n.sum + b[0] + b[2])
                if v < 2 || v > 3
                    i = 0
                elsif v == 3
                    i = 1
                end
            elsif ro == 2
                v = (l[1..2].sum + n[1..2].sum + b[1])
                if v < 2 || v > 3
                    i = 0
                elsif v == 3
                    i = 1
                end
            end
            ro += 1
            i
        end
        # increment c each row
        c += 1

        # clear row each iteration
        ro = 0
        b
    end
    new_board
end

# Test One

board1 = [[0,1,0],[0,0,1],[1,1,1],[0,0,0]]

# print game_of_life(board1)

# Output: [[0,0,0],[1,0,1],[0,1,1],[0,1,0]]

# Test Two

board2 = [[1,1],[1,0]]

# print game_of_life(board2)

# Output: [[1,1],[1,1]]
