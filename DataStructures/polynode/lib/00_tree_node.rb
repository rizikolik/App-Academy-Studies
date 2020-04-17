class PolyTreeNode
   
  attr_accessor :value
  attr_reader :parent
    def initialize(value=nil)
        @parent=nil
        @children=[]
        @value=value
    end
    def parent
        @parent
    end
    def children
        @children
    end
    def value
        @value
    end

    def parent=(node)
        return if self.parent == node
            if @parent
            @parent.children.delete(self)
            end
            @parent=node
            if @parent!=nil
            @parent.children.push(self)
            end
         
          self
        
        
    end
    def add_child(child_node)
        child_node.parent=self  if !@children.include?(child_node) 
            false

    end

    def remove_child(child_node)

     if child_node && !@children.include?(child_node)
      raise "You are trying to delete a child that doesnt belong to this node!"
     end

     child_node.parent=nil 
    end
   def  dfs(target_value)
    return @value if @value==target_value
    @children.each do |key|
    search=dfs(key)
    return search unless search.nil?
    end
    

 
    

   end
    


end