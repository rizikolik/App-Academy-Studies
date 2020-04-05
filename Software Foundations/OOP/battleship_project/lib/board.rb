class Board
    attr_reader :size
    def initialize(n)
        @grid=Array.new(n) {Array.new(n,:N)}
        @size=n*n 
    end

    def [](array)
     @grid[array[0]][array[1]]
    end
    def []=(pos,value)
    @grid[pos[0]][pos[1]]=value
    end
    def num_ships
        @grid.flatten.count(:S)
       
    end
    def attack(pos)
   if  self[pos]==:S
    self[pos]=:H
    puts 'you sunk my battleship!' 
    return true
   else
    self[pos]=:X
    return false
   end
   end

   def place_random_ships
    max=0.25 * self.size
        while self.num_ships<max
        row=rand(0...@grid.length)
        col=rand(0...@grid.length)
        pos = [row, col]
        self[pos] = :S
        end
    end
    def hidden_ships_grid
        @grid.map do |row|
            row.map do|col|
                if col ==:S 
                    :N 
                else
                    col
                end
            end
        end
    end
    def self.print_grid(array)
        array.each do |ele|
            puts ele.join(" ")
          end
    end
    def cheat
        Board.print_grid(@grid)
    end
    def print
        Board.print_grid(hidden_ships_grid)
    end


end
