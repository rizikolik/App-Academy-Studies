def partition(array,num)
    arr_1=[]
    arr_2=[]
        array.each  do |el|
                if  el <num
                    arr_1 << el
                else
                    arr_2 << el
                end
        end
    [arr_1,arr_2]
end

def merge(hash_1,hash_2)
   hash={}
    hash_1.each { |k, v| hash[k] = v }
    hash_2.each { |k, v| hash[k] = v }
  hash

end
def censor(sentence,array)
    arr=sentence.split(" ")
        arr.map!.each do |word|
            if array.include?(word.downcase)
            word.gsub(/[a,e,i,o,u,A,E,I,O,U]/,"*")
            else
                word
            end
        end
    arr.join(" ")
    end

    def power_of_two?(num)
      nam=1
     while nam<num
        nam*=2
     end
        nam == num 
    end

    
