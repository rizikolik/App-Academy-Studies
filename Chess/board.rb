require_relative "pieces"
class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) { Array.new (8) { NullPiece.instance } }
        @sentinel=nil

    end
    def valid_pos?(pos)
    end

    def [](pos)
        row, col = pos[0], pos[1]
       @rows[row][col]
      end
    def []=(pos,val)
    end
    def move_piece(color,start_pos,end_pos)
        if start_pos.nil?
            raise.ArgumentError "You have to give  a valid start point"
        end
        if !end_pos
            raise.ArgumentError "This end point cant use .."
        end
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

board=Board.new
pos=2,3
board[pos]