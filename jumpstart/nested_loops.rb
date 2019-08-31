
# Write a function that tells the same elements of both arrays .
def same_element_check(arr1,arr2)
    newarr=[]
    arr1.each.with_index  do |num,idx|
        arr2.each.with_index do |num1,idx1|
            if num==num1
            newarr.push(num)
            end
        end
    end
    return newarr
end
p same_element_check([1,2,3,45,"hello","a",5,7],[1,"hello worl!",3,"fgj"])



