class MaxIntSet
  attr_reader :store
  def initialize(max)
    @store = Array.new(max, false)
  end

  def insert(num)
    validate!(num)
  @store[num]=true
  
  end

  def remove(num)
    validate!(num)
    return nil unless include?(num)
    @store[num]=false
    num
  end

  def include?(num)
    validate!(num)
   @store[num]
   end

  private

 
  def is_valid?(num)
    num.between?(0, self.store.length - 1)
  end

  def validate!(num)
    raise "Out of bounds" unless is_valid?(num)
  end
end


class IntSet
  attr_reader :store
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    return false if include?(num)
   self[num] << num
   end

  def remove(num)
    self[num].delete(num)
  end

  def include?(num)
   self[num].include?(num)
  end

  private

  def [](num)
  @store[num%num_buckets]
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count , :store

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    return false if include?(num)
    self[num] << num
    @count +=1
    resize! if num_buckets < @count
    
  end

  def remove(num)
   @count-=1 if self[num].delete(num)
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    @store[num%num_buckets]
  end

  def num_buckets
    @store.length
  end
 
  def resize!
    old_one=@store
   @count = 0
  @store = Array.new(num_buckets * 2) { Array.new }
  old_one.flatten.each { |num| insert(num) }

  end
end
