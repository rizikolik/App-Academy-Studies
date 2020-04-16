class Tile
  moves_around=[

  ]
  
    def initialize(board,pos)
        @board, @pos = board, pos
        @bombed, @explored, @flagged = false, false, false
      end

      def inspect
        p " bombed: #{@bombed}, explored: #{@explored}, flag :#{@flagged} "
      end

 def reveal
    @board[self]
 end
def neighbors
  adjacent_coords = DELTAS.map do |(dx, dy)|
    [pos[0] + dx, pos[1] + dy]
  end.
  adjacent_coords.select do |row, col|
    [row, col].all? do |coord|
      coord.between?(0, @board.grid_size - 1)
    end

end
def neighbor_bomb_count
 neighbors.select(&:bombed?).count

end 
end
tilek=Tile.new(3434,2)
p tilek.reveal

