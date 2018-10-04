require 'matrix'

class Maze
<<<<<<< HEAD

    STEP = {'N': [-1,0], 'S': [1,0], 'E': [0,1], 'W':[0,-1]}  

    def initialize(maze)
        @maze = Matrix[*maze]
        @current_pos = @maze.index(2) #find the position of number '2' in matrix
=======
    # List of valid moves, each mapped to a row and column offset hash
    # eg. moving north means going up one row (-1 rows, 0 columns) in the maze array
    @@valid_moves = {
        'N': { row: -1, col: 0 },
        'S': { row: 1, col: 0 },
        'E': { row: 0, col: 1 },
        'W': { row: 0, col: -1 }
    }

    def initialize(maze)
        @maze = maze
        # Find the start location (element with value 2)
        # First find the row that includes the value 2
        start_row = maze.find { |row| row.include?(2) }
        # Construct player position hash from column and row indexes
        @player_position = { col: start_row.index(2), row: maze.index(start_row) }
>>>>>>> 19cb0abbbb65d615711988564ae54d46d1ac4129
    end

    def walk(moves)
<<<<<<< HEAD
        for move in moves   
            if can_move?(move)
                @current_pos = @next_pos 
                return "Finish" if @state == 3
            else
                return "Dead"
            end 
        end

        return "Lost" if @state == 0 || @state == 2 
    end

    def can_move?(direction)    # method that returns boolean for the next step
        @next_pos = Vector[*@current_pos] + Vector[*STEP[:"#{direction}"]] # move a step in a specified direction
        # if coordinates out of range return false i.e dead
        return false if @next_pos.all?(&:negative?) || @next_pos.any? {|pos| pos >= @maze.row_size }
        @state = @maze[@next_pos[0], @next_pos[1]] #  @state contain 0, 1, 2, 3 depending on the position of the next step
        return @state != 1 # returns false if @state == 1,  returns true if @state == 0,2,3
=======
        for move in moves do
            # Convert move to symbol so we can use it to reference @@valid_moves
            move = move.to_sym
            # Ignore invalid moves
            if @@valid_moves[move]
                # Adjust the player position according to the direction moved
                @player_position[:col] += @@valid_moves[move][:col]
                @player_position[:row] += @@valid_moves[move][:row]
                # Get the value at the new location in the maze
                # This will fail if we're outside the maze, triggering the rescue clause
                value = @maze[@player_position[:row]][@player_position[:col]]
                # Hit a wall?
                return 'Dead' if value == 1
                # Reached the exit?
                return 'Finish' if value == 3
            end
        end
        # If we didn't finish or die, then we're lost!
        'Lost'
    rescue
        'Dead'
>>>>>>> 19cb0abbbb65d615711988564ae54d46d1ac4129
    end

end




