arr=[1,2,3,4,5,6,7,8]
# 1) Iterate over a range with .. method
arr[1..3].each {|num| puts num}

(1..5).each {|num| puts num} #Iterates from 1 to 5 (includes 1 and 5)


## Write a method that takes a number as max and returns all the numbers from 1 to max that divides 
## 3 or 5 .Not both .


def fizbuz(max)
    nums=[]
    (1...max).each do |num|
        if((num%5==0||num%3==0)&&(num%5!=0||num%3!=0))
                nums.push(num)
            
        end
    end
 return p nums
end

fizbuz(20)