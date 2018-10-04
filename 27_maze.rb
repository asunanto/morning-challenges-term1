require 'matrix'

class Maze

    STEP = {'N': [-1,0], 'S': [1,0], 'E': [0,1], 'W':[0,-1]}  

    def initialize(maze)
        @maze = Matrix[*maze]
        @current_pos = @maze.index(2) #find the position of number '2' in matrix
    end

    def walk(moves)
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
    end

end




