require_relative "poly_tree_node"
class KnightPathFinder
attr_reader :initial
attr_accessor :root_node
    def initialize(pos)
        @initial=pos
        @considered_positions=[pos]
        build_move_tree
      
    end
    def self.valid_moves(pos)
        row,col=pos
        moves = [
            [row - 2, col + 1],
            [row - 2, col - 1],
            [row + 2, col + 1],
            [row + 2, col - 1],
            [row - 1, col + 2],
            [row - 1, col - 2],
            [row + 1, col + 2],
            [row + 1, col - 2]
          ]
        moves.select do |new_pos|
            row,col=new_pos
            KnightPathFinder.valid_position(row)&&KnightPathFinder.valid_position(col)
        end
end
    def self.valid_position(pos)
        pos >= 0 && pos < 8
      end
     def new_move_positions(pos)
  
      new_consider=KnightPathFinder.valid_moves(pos).select{|key| !@considered_positions.include?(key)}
      new_consider.each{|pos|  @considered_positions << pos}
      new_consider

    end
  
    def find_path(end_pos)
        end_node = root_node.dfs(end_pos)

        trace_path_back(end_node)
        .reverse
        .map(&:value)

       
    end

    def  trace_path_back(end_node)
        path=[]
       current=end_node
       until current.nil?
        path << current
        current= current.parent
      
       end
    path

    end
    def build_move_tree
        self.root_node=PolyTreeNode.new(initial)
        nodes=[@root_node]
        until nodes.empty?
            current=nodes.shift
            current_pos=current.value
            new_move_positions(current_pos).each do |key|
                next_node = PolyTreeNode.new(key)
                current.add_child(next_node)
                nodes << next_node
            end
        end
    
    end
    


end

kpf = KnightPathFinder.new([0,0])
p kpf.find_path([7,6])
[[0, 0], [1, 2], [2, 4], [3, 6], [5, 5], [7, 6]]