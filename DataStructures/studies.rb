class Stack
    def initialize
        @els=[]
    
    end

    def push(el)
        @els << el
     
    end

    def pop
        @els.pop()
     
    end

    def peek
     @els.last
    end
  end

  class Que 
      def initialize
          @els=[]
      end
      def enqueue(el)
@els.push(el)
      end
      def dequeue
        @els.shift
      end
      def peek
        @els.first
      end
  end


  class Map

    def initialize
        @arr=[]
    end
    def set(key, value)
        pairs= arr.index { |pair| pair[0] == key }
        if pairs
          arr[pairs][1] = value
        else
          arr.push([key, value])
        end
        value
      end
    def get(key)
    end
    def delete(key)
    end
    def show
    end
  end


