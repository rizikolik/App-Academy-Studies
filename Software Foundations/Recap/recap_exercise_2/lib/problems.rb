# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple
# of both of the given numbers
def least_common_multiple(num_1, num_2)

    (2..num_1*num_2).each do |num|
      return num  if num%num_1==0 && num%num_2==0
    end
end

   




# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
arr=str.split("")
pairs=[]
hash=Hash.new(0)
    arr.each.with_index do |ele,i|
        pair= ele+arr[(i+1)%arr.length]
        if pairs.include?(pair)
            pairs << pair
            hash[pair]+=1
        else
            hash[pair]+=1
        end
    end
    sorted = hash.sort_by { |str, n| n }
    sorted.last[0]
end



class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        newa={}
self.each do |k,v|
    newa[v]=k
    end
    newa
end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        prc||=Proc.new{|a,b|  a+b}
        count=0
        self.each_with_index do |el1, idx1|
            self.each_with_index do |el2, idx2|
                if el1 + el2 == num && idx2 > idx1
                    count += 1
                end
            end
        end
       
    
     count
    end

    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    #
    # Sorting algorithms like bubble_sort, commonly accept a block. That block accepts
    # two parameters, which represents the two elements in the array being compared.
    # If the block returns 1, it means that the second element passed to the block
    # should go before the first (i.e. switch the elements). If the block returns -1,
    # it means the first element passed to the block should go before the second
    # (i.e. do not switch them). If the block returns 0 it implies that
    # it does not matter which element goes first (i.e. do nothing).
    #
    # This should remind you of the spaceship operator! Convenient :)
    def bubble_sort(&prc)
  prc||=Proc.new{|a,b|  a<=>b}
        sorted=false
        while !sorted
            sorted=true
            (0...self.length-1).each do |i|
               if prc.call(self[i],self[i+1])==1
                 self[i],self[i+1]=self[i+1],self[i]
                 sorted=false
               end
             end  
        end
    
      self
end
end
