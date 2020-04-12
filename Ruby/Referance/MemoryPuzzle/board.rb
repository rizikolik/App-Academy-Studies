require_relative "card"
class Board
    def initialize(size)
        @rows = Array.new(size) { Array.new(size) }
        @size = size
        populate

    end
    def populate
        alp=("a".."z").to_a
        Card.new(alp.sample)
    end
    def render
    end
    def won?
       return true if @grid.all?{|k| k.face}
       false
    end
    def reveal(guessed_pos)
         @grid[guessed_pos].reveal
    end
end