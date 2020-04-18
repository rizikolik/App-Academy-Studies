require_relative 'tic_tac_toe'

class TicTacToeNode
  attr_reader :next_mover_mark, :prev_move_pos, :board
  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = nil || prev_move_pos
  end

  def losing_node?(evaluator)
    @board.new()
  end

  def winning_node?(evaluator)
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children

  end
end
