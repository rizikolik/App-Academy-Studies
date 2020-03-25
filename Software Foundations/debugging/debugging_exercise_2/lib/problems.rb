# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
def prime?(num)
    
    return false if num < 2

    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    return true
end

def largest_prime_factor(number)
    dividers=[]
        (1..number).each do |key|
            if number%key==0 && prime?(key)
                dividers<< key
            
            end
        end
        dividers[-1]
        
 end


 


def unique_chars?(string)
hash=Hash.new(0)
        string.each_char do |c|
            if !hash.keys.include?(c)
                hash[c]+=1
            else
            return false
            end
        end
 true       
end


def dupe_indices(array)
    hash=Hash.new([])
            array.each.with_index do |key,i|
          if !hash.keys.include?(key)
            hash[key]=[i]
          elsif
            hash[key]<< i
            end
        end
        hash.select { |key,val| val.length > 1 }
end


def counter(arr)
    count = Hash.new(0)

    arr.each { |ele| count[ele] += 1 }

    count
end

def ana_array(arr_1, arr_2)
    count_1 = counter(arr_1)
    count_2 = counter(arr_2)
   return  count_1 == count_2
end