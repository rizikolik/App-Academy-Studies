class LRUCache
  attr_reader :cache , :size
    def initialize(size)
      @size=size
      @cache=[]

    end

    def count
     @cache.count
    
    end

    def add(el)
      if @cache.include?(el)
        @cache.delete(el)
        @cache << el
      else
        if count!=@size
        @cache << el
        else
          @cache.delete(@cache.first)
          @cache << el
        end
      end
    end

    def show
    p @cache

   end

   
   

  end