#Hacker Rank Challange 

#Write a method,that takes in an array and a number factor
#The method should return a count representing the number of elements of the array that are divisible by the given factor.
def divisible_count(arr,factor)
counter=0
i=0
while i<arr.length
    if(arr[i]%factor==0)
        counter+=1

    end
    i+=1
end
return counter
end

# Examples
puts divisible_count([10, 6, 30, 17], 5)    #=&gt; 2
puts divisible_count([24, 2, 6, 12], 3)     #=&gt; 3
print "\n"

#Write a method,that takes in an array of numbers.
#The method should return a decimal number representing the average value of all elements of the array.

def average_array(arr)
    len=arr.length
    i=0
    total=0
    while i<len
    total+=arr[i]
    i+=1.0
    end
    return total.to_f/len
  end
# Examples
puts  average_array([3, 2, 10])     # =&gt; 5.0
puts  average_array([4, 3, 3, 14])  # =&gt; 6.0
puts  average_array([5, 10])        # =&gt; 7.5