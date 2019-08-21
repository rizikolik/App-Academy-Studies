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