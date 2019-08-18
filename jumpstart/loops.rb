# Write a method `count_a(word)` that takes in a string word and returns the number of a's in the word. 
# The method should count both lowercase (a) and uppercase (A)

def count_a(word)
    i=0
    counter=0

    while i<word.length
        if(word[i]=="a"||word[i]=="A")
            i+=1
            counter+=1
            next
        end
        i+=1
    end
    return counter

end
puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3

# Write a method, `count_vowels(word)`, that takes in a string word and returns the number of vowels in the word. 
# Vowels are the letters a, e, i, o, u.

def count_vowels(word)
    i=0
    counter=0
    while i< word.length
        if(word[i]=="a"||word[i]=="e"||word[i]=="i"||word[i]=="o"||word[i]=="u")
            counter+=1
            i+=1
            next
        end
        i+=1
    end
    return counter
end

puts "vovel counts"
puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2

# Write a method `sum_nums(max)` that takes in a number max and returns the sum of all numbers from 1 up to and including max.

def sum_nums(max)
    i=max
    total_max=0
    while i >=1
        
        total_max+=i
        i-=1
        
    end
    return total_max

end

puts "sum max"
puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15

# Write a method `factorial(num)` that takes in a number num and returns the product of all numbers from 1 up to and including num.

def factorial(num)
    i=num
    factorial=1
    while i>0
       
        factorial*=i
        i-=1
    end
    return factorial
end

puts "factorial results:"
puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120


# Write a method `reverse(word)` that takes in a string word and returns the word with its letters in reverse order.

def reverse(word)
    len=word.length
    reverse=""
   i=len-1
    while i>=0

       reverse+=word[i]
       i-=1
    end
    return reverse
end
puts"=========reverse maker ================"
puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"

# Write a method `is_palindrome(word)` that takes in a string word and returns the true if the word is a palindrome, false otherwise.
# A palindrome is a word that is spelled the same forwards and backwards.

def is_palindrome(word)
    len=word.length
    i=len-1
    reverse=""

    while i>=0
        reverse+=word[i]
        i-=1
    end
    if(reverse==word)
        return true
    else false
    end
    
        

end

puts "============palindrom checker ============="
puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false