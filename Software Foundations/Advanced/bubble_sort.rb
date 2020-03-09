 # Ruby has an easy method for swaping elements.

 array = ["a", "b", "c", "d"]    # let's swap "a" and "b"
array[0], array[1] = array[1], array[0]
p array         # => ["b", "a", "c", "d"]

food = "mom's spaghetti"
clothing = "sweater"

food, clothing = clothing, food # Swapping variables.


# creating a sorting algorithm
def sort(arr)
    sorted=false
    while !sorted 
        sorted=true
        (0...arr.length-1).each do |i|
        
       if arr[i] > arr[i+1]
        arr[i],arr[i+1] = arr[i+1],arr[i]
        sorted=false
       end
    end
  
end
arr

    


end


p sort([2,1,6,3,12,24,5,8])


