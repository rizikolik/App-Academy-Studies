require_relative "piece"
class Board
    attr_reader :rows
    def initialize(rows)
        @rows=Array.new(rows){ Array.new(rows,0)}
        @sentinental=nil

    end
    def valid_pos?(pos)
    end

    def [](pos)
    end
    def []=(pos,val)
    end
    def move_piece(color,start_pos,end_pos)
    end
    def add_piece(piece,pos)
    end
    def checkmate?(color)
    end
    def in_check?(color)
    end
    def find_king(color)
    end
    def pieces
    end
    def dup
    end
    def move_piece!(color,start_pos,end_pos)
    end


end

board=Board.new(6)
p board.rows