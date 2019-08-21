# Write a method `doubler(numbers)` that takes an array of numbers and returns a new array
# where every element of the original array is multiplied by 2.

def doubler(numbers)
arr2=[]
i=0
    while i<numbers.length
        arr2<< numbers[i]*2
        i+=1
        
    end
    return arr2

end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]
print "\n"

# Write a method `yell(words)` that takes in an array of words and returns a
# new array where every word from the original array has an exclamation point after it.

def yell(words)
    len=words.length
    newarr=[]
    i=0
    while i<len
        newarr<< (words[i]+"!")
        i+=1
    end

    return newarr

end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]
print "\n"

# Write a method `element_times_index(nums)` that takes in an array of numbers and returns a new array containing 
# every number of the original array multiplied with its index.

def element_times_index(numbers)
    newarr=[]
    len=numbers.length
    i=0
    while i<len
        newarr << numbers[i]*i
        i+=1
    end
    return newarr

end

print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]
print "\n"

# Write a method `even_nums(max)` that takes in a number `max` and returns an array containing all even numbers from 0 to max

def even_nums(max)
    i=0
    newarr=[]
        while i<=max
            if(i%2==0)
                newarr<< i
                i+=1
            else
                i+=1
             end
        end 
    return newarr
end
puts "======even number====="
print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]
print "\n"

# Write a method `range(min, max)` that takes in two numbers min and max.
# The function should return an array containing all numbers from min to max inclusive.

def range(min, max)
    i=min
    j=max
    newarr=[]
    while i <=j
        newarr<< i
        i+=1
    end
    return newarr



end
puts "======range====="
print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]
print "\n"

# Write a method `odd_range(min, max)` that takes in two numbers min and max.
# The method should return an array containing all odd numbers from min to max (inclusive).

def odd_range(min, max)
    i=min
    j=max
    newarr=[]
    while i<=j
        if(i%2!=0)
            newarr<< i
            i+=1
        else
            i+=1
        end
    end
    return newarr

end
puts "======odd range====="
print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]
print "\n"

# Write a method `reverse_range(min, max)` that takes in two numbers min and max.
# The function should return an array containing all numbers from min to max in reverse order. 
# The min and max should be excluded from the array

def reverse_range(min, max)
    k=max-1
    
    newarray=[]
    while k>min
     newarray<<k
     k-=1
    end
    return newarray

end
puts "======reverse range====="
print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]
print "\n"

# Write a method `first_half(array)` that takes in an array and returns a new array containing the first half of the elements in the array.
# If there is an odd number of elements, return the first half including the middle element.

def first_half(array)
    len=array.length
    i=0;
    newarr=[]
        while i<(len/2.0)
            newarr<< array[i]
            i+=1
        end
    return newarr
    
   
end
  puts "======first half====="
  print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
  puts
  print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]
  print "\n"

  # Write a method `factors_of(num)` that takes in a num and returns an array of all positive numbers less than or equal to num that can divide num.

def factors_of(num)
    i=1
    newarr=[]
    while i<=num
        if(num%i==0)
            newarr<< i
            i+=1
        else
            i+=1
        end
    end
        return newarr


end
puts "======factors of====="
print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]
print "\n"

# Write a method `select_odds(numbers)` that takes in an array of numbers and returns a new array containing the odd numbers of the original array.

def select_odds(numbers)
    i=0
    newarr=[]
    while i< numbers.length
        if numbers[i]%2==1
            newarr << numbers[i]
            i+=1
        else
            i+=1
        end
    end
    return newarr
end
puts "======select odd====="
print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []
print "\n"

# Write a method `select_long_words(words)` that takes in an array of words and returns a new array containing 
# all of the words of the original array that are longer than 4 characters.

def select_long_words(words)
    i=0
    len=words.length
    longwords=[]
    while i<len
        if(words[i].length>4)
            longwords<< words[i]
        end
        i+=1
    end
    return longwords

end

puts "======select long word====="
print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]
print "\n"

# Write a method `sum_elements(arr1, arr2)` that takes in two arrays. 
# The method should return a new array containing the results of adding together corresponding elements of the original arrays. 
# You can assume the arrays have the same length.

#(This one takes about 10 minutes to figure out :) I wrote it for the possiblity of the arrays lengths are not equal..
def sum_elements(arr1, arr2)
i=0
k=0
newarr=[]
while i<arr1.length
    while k<arr2.length
        
        element=arr1[k]+arr2[k]
        
        newarr<<element
        
        k+=1
    end
    i+=1
    
end
return newarr
end

puts "======sum elements====="
print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]
print "\n"

# Write a method `fizz_buzz(max)` that takes in a number max and returns an array containing all numbers from 0 to max 
# that are divisible by either 4 or 6, but not both.

def fizz_buzz(max)
        i=1
        newarr=[]
    while i<max
        if(i%4==0||i%6==0)
            if(i%4!=0||i%6!=0)
                newarr<<i
            end
        end
        i+=1
    end
    return newarr

end

puts "======fizz_buzz====="
print fizz_buzz(25) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]
print "\n"