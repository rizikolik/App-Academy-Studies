# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        return nil if self.empty?
        self.max-self.min
    end
    def average
      return nil if self.empty?
      self.sum/self.length.to_f
    end
    def median
        return nil if self.empty?
        sorted=self.sort
        mid=self.length / 2
            if self.length.odd?
                return sorted[mid]
            else
                return (sorted[mid-1]+sorted[mid])/2.0
            end
    end
    def counts
        hash=Hash.new(0)
        self.each{|sel| hash[sel]+=1}
        hash
        
    end
   def my_count(item)
    count=0
self.each{|ele| count+=1 if ele==item}
count
end
def my_index(val)
self.each.with_index{|k,i| return i if k==val}
nil
end
def my_uniq
hash=Hash.new(0)
self.each{|k| hash[k]+=1}   # [[1,3],[2,4]]
hash.keys
end
def my_transpose
    transpos=[]
        self.each.with_index do |k,v|
            row=[]
        self.each.with_index do |l,m|
        row << self[m][v]
        
        end
        transpos<<row
        end
   transpos
end


end


