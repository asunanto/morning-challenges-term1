require 'matrix'

class Maze
    attr_accessor :maze
    def initialize(maze)
        @maze = Matrix[*maze]
        @current_pos = @maze.index(2)
        @direction = {'N': [-1,0], 'S': [1,0], 'E': [0,1], 'W':[0,-1]}
        
    end
    def walk(moves)
        for move in moves
            if can_move?(move) == true 
                @current_pos = @next_pos
            elsif can_move?(move) == 'Finish'
                return "Finish"
            elsif can_move?(move) == 'Dead'
                return "Dead"
            end
        end
        return "Lost" if @maze[@current_pos[0],@current_pos[1]] == 0

    end

    def can_move?(direction)
        
        case direction
        when 'N'
            @next_pos = Vector[*@current_pos] + Vector[*@direction[:N]]
        when 'S'
            @next_pos = Vector[*@current_pos] + Vector[*@direction[:S]]
        when 'E'
            @next_pos = Vector[*@current_pos] + Vector[*@direction[:E]]
        when 'W'
            @next_pos = Vector[*@current_pos] + Vector[*@direction[:W]]
        end

        return "Dead" if @next_pos[0] < 0 || @next_pos[1] < 0
    
        case @maze[@next_pos[0], @next_pos[1]]
        when 3
            return "Finish"
        when 2

        when 1
            return "Dead"
        when 0
            return true
        end
        
    end
    
    
end

# maze = Maze.new([
#     [1,1,1,1,1,1,1],
#     [1,0,0,0,0,0,3],
#     [1,0,1,0,1,0,1],
#     [0,0,1,0,0,0,1],
#     [1,0,1,0,1,0,1],
#     [1,0,0,0,0,0,1],
#     [1,2,1,0,1,0,1]
# ])   



