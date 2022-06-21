#   Island Perimeter

require "minitest/autorun"

    # You are given row x col grid representing a map where grid[i][j] = 1 represents land and grid[i][j] = 0 represents water.

    # Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells).

    # The island doesn't have "lakes", meaning the water inside isn't connected to the water around the island. One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.

def island_perimeter(grid)
    water_count = 0
    grid.each_with_index do |g, r|
        g.each_with_index do |j, i|
            index = [r, i]
            result = check_for_water(j, index, grid)
            water_count += result
        end
    end
    water_count
end

def check_for_water(point, index, grid)
    hsh_map = {
        up: [[-1], [0]],
        down: [1, 0],
        left: [0, -1],
        right: [0, 1]
    }
    require 'pry'; binding.pry
end

class IslandTest < MiniTest::Test
    def test_case_one
        grid = [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]

        assert_equal(16, island_perimeter(grid))
    end
end
