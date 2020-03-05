# Write a method `map_by_name`  that takes in an array of hashes and returns a new array containing the names of each hash.

def map_by_name(arr)
names=arr.map{|has| has["name"]}
end

pets = [
  {"type"=>"dog", "name"=>"Rolo"},
  {"type"=>"cat", "name"=>"Sunny"},
  {"type"=>"rat", "name"=>"Saki"},
  {"type"=>"dog", "name"=>"Finn"},
  {"type"=>"cat", "name"=>"Buffy"}
]
print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
puts

countries = [
 {"name"=>"Japan", "continent"=>"Asia"},
 {"name"=>"Hungary", "continent"=>"Europe"},
 {"name"=>"Kenya", "continent"=>"Africa"},
]
print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
puts "==================="

# Write a method `map_by_key` that takes in an array of hashes and a key string.
# The method should returns a new array containing the values from each hash for the given key.

def map_by_key(arr, key)
return newarr=arr.map{|ele| ele[key]}
end

locations = [
  {"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
  {"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
  {"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
]

print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
puts
print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
puts



# Write a method `yell_sentence` that takes in a sentence string and returns a new sentence where every word is yelled. 
# See the examples. Use map to solve this.

def yell_sentence(sent)
arr=sent.split(" ").map do |ele|
str=ele.upcase+"!"

end
return arr.join(" ")
end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"



# Write a method `whisper_words` that takes in an array of words and returns a new array containing a whispered version of each word.
# See the examples. Solve this using map :).

def whisper_words(words)
words.map{|ele| ele.downcase+"..."}
end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts

# Write a method `o_words` that takes in a sentence string and returns an array of the words that contain an "o".
# Use select in your solution!

def o_words(sentence)
 arr=sentence.split(" ")
 o_arr=arr.select{|w| w.include?("o")}
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts

# Write a method `last_index` that takes in a string and a character.
# The method should return the last index where the character can be found in the string.

def last_index(str, char)
   i=str.length-1
   while i>=0
    if(str[i]==char)
        return i
    end
    i-=1
end
end
## i could use rindex and find the last index here.

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9


# Write a method `most_vowels` that takes in a sentence string and returns the word of the sentence that contains the most vowels.

def most_vowels(sentence)
    vovels=["a","e","i","o","u"]
    arr=sentence.split(" ")
    count1=0
    hash={}
   arr.each do |word|
    count2=0 
    
i=word.length-1
    while i>=0
        if(vovels.include?(word[i]))
            count2+=1
        end
    i-=1
    end
   hash[word]=count2

end
sorted = hash.sort_by { |k,v| v}
return sorted[-1][0]
end


puts most_vowels("what a wonderfuul lifelihoda") #=> "wonderful"


# Write a method `prime?` that takes in a number and returns a boolean, indicating whether the number is prime.
# A prime number is only divisible by 1 and itself.

def prime?(num)
if num<2
    return false
end
(2...num).each do |key|
if num % key == 0
    return false
end
end
return true

end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false

# Write a method `prime_factors` that takes in a number and returns an array containing all of the prime factors of the given number.

def prime_factors(num)
    factors=[]
(2...num).each do |factor|
if num % factor == 0 && prime?(factor)
factors << factor
end
end
def primes(num)
if num<2
    return false
end
(2...num).each do |key|
    if num%key == 0
        return false 
    end

end
return true
end
return factors
end

puts prime_factors(24) #=> [2, 3]
puts
puts prime_factors(60) #=> [2, 3, 5]

# Write a method `greatest_factor_array` that takes in an array of numbers and returns a new array 
# where every even number is replaced with it's greatest factor. 
# A greatest factor is the largest number that divides another with no remainder. 
# For example the greatest factor of 16 is 8. 
# (For the purpose of this problem we won't say the greatest factor of 16 is 16, because that would be too easy, ha)

def greatest_factor_array(arr)
    newarr=[]
arr.each do |key|
    if key % 2 == 0
        evens=(2...key-1).select do |factor|
             key % factor == 0
            end
       newarr << evens[evens.length-1]
        else newarr << key
        end 
end
return newarr
end


print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts "======================================"

# Write a method `perfect_square?` that takes in a number and returns a boolean indicating whether it is a perfect square.
# A perfect square is a number that results from multiplying a number by itself. 
# For example, 9 is a perfect square because 3 * 3 = 9, 25 is a perfect square because 5 * 5 = 25.

def perfect_square?(num)
if num < 2 
    return  true
end
(2...num).each do |key|
if key*key == num
    return true
end

end
return false
end

puts perfect_square?(121)   #=> true
puts perfect_square?(13)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(144)  #=> true


# Write a method `triple_sequence` that takes in two numbers, start and length. 
# The method should return an array representing a sequence that begins with `start` and is `length` elements long. 
# In the sequence, every element should be 3 times the previous element. Assume that the length is at least 1.

def triple_sequence(start, length)
i=1
arr=[start]
while i<length
   arr << arr[i-1]*3
   i+=1
end
return arr
    
end

print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
puts triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts"================="

# A number's summation is the sum of all positive numbers less than or equal to the number. 
# For example: the summation of 3 is 6 because 1 + 2 + 3 = 6, the summation of 6 is 21 because 1 + 2 + 3 + 4 + 5 + 6 = 21. 
# 
# Write a method `summation_sequence` that takes in a two numbers: `start` and `length`. 
# The method should return an array containing `length` total elements. 
# The first number of the sequence should be the `start` number. 
# At any point, to generate the next element of the sequence we take the summation of the previous element. 
# You can assume that `length` is not zero.


def summation_sequence(start, length)
arr=[start]

i=1
while i < length
    sum=0
 (1..arr[-1]).each do |key|
    
  sum+=key
    end
arr << sum
i+=1
end

return arr
end


p summation_sequence(3, 4) # => [3, 6, 21, 231]
 p summation_sequence(5, 3) # => [5, 15, 120]
 puts "======fibonacci"


 # The fibonacci sequence is a sequence of numbers whose first and second elements are 1. 
# To generate further elements of the sequence we take the sum of the previous two elements. 
# For example the first 6 fibonacci numbers are 1, 1, 2, 3, 5, 8. Write a method `fibonacci` that takes in a number length and returns the fibonacci sequence up to the given length.

def fibonacci(length)
fibonacci_array=[1,1]
if length == 1 
    return [1]
elsif length == 0
    return []
end
if length >1
    i=2
    while i < length
      newone = fibonacci_array[-1] + fibonacci_array[-2]
     fibonacci_array << newone
     i+=1
    end 
end

return fibonacci_array

end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts "================================="


# Write a method `caesar_cipher` that takes in a string and a number. 
# The method should return a new string where every character of the original is shifted `num` characters in the alphabet.

def caesar_cipher(str, num)
alpa=["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
star=str.split("")
newstr=[]
star.each do |key|
    newa=alpa.index(key)+num
    if alpa[newa]
    newstr << alpa[newa]
    else  newstr << alpa[(newa - alpa.length)]
    end
end
return newstr.join("")
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"
puts "=============ceaser ===================="


# Write a method that takes in a string and returns the number of times that the same letter repeats twice in a row.

def double_letter_count(string)
    count=0
 string.each_char.with_index do |key,idx|
if string[idx] == string[idx+1]
    count+=1
end

end
return count
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1

# Write a method `adjacent_sum` that takes in an array of numbers and returns a new array containing 
# the sums of adjacent numbers in the original array. See the examples.

def adjacent_sum(arr)
    updated=[]
arr.each.with_index do |k,index|
    numara = index+1
    if arr[numara] != nil
  deger=k + arr[numara]
  updated << deger
    end
    


end
return updated
end

print adjacent_sum([3, 7, 2, 11]) #=> [10, 9, 13], because [ 3+7, 7+2, 2+11 ]
puts
print adjacent_sum([2, 5, 1, 9, 2, 4]) #=> [7, 6, 10, 11, 6], because [2+5, 5+1, 1+9, 9+2, 2+4]
puts "======================"

# Write a method `pyramid_sum` that takes in an array of numbers representing the base of a pyramid. 
# The function should return a 2D array representing a complete pyramid with the given base. 
# To construct a level of the pyramid, we take the sum of adjacent elements of the level below.

def pyramid_sum(base)
    pyramid=[base]
    flat=[]
    while pyramid.length <base.length 

       
        pyramid.unshift(adjacent_sum(pyramid[0]))
    end
    def sum(arr1)
   arr1.each.with_index do |k,idx|

        if arr1[idx+1] != nil
            puts k+arr1[idx+1]
        flat << k+arr1[idx+1]
        end 
    end
end



return pyramid
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts

# Write a method `consonant_cancel` that takes in a sentence and returns a new sentence where every word begins with it's first vowel.

def consonant_cancel(sentence)
arr1=sentence.split(" ")

arr2=arr1.map {|ele| dele(ele)}
return arr2.join(" ")
end
def dele(kelime)
    vovels="aeiuo"
    kelime.each_char.with_index do |c,k|
        if vovels.include?(c)
        return kelime[k..-1]
        end
     end
end
    


puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"

# Write a method `all_else_equal` that takes in an array of numbers. 
# The method should return the element of the array that is equal to half of the sum of all elements of the array. 
# If there is no such element, the method should return nil.

def all_else_equal(arr)
total=0
arr[0..-1].each {|k| total+=k}
if arr.include?(total/2)
    return total/2

else return nil
end
end

p all_else_equal([2, 4, 3, 10, 1]) #=> 10
p all_else_equal([6, 3, 5, -9, 1]) #=> 3
p all_else_equal([1, 2, 3, 4])     #=> false
puts"========================"



# Write a method `anagrams?` that takes in two words and returns a boolean indicating whether or not the words are anagrams. 
# Anagrams are words that contain the same characters but not necessarily in the same order. 
# Solve this without using .sort


def anagrams?(word1, word2)
        if word1.length!=word2.length
            return false
        end
        arr=word1.split("").select {|k| word2.include?(k)}
        if arr.length != word1.length
        return false
        end
    return true

end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false

puts "==================="
# Write a method `vowel_cipher` that takes in a string and returns a new string where 
# every vowel becomes the next vowel in the alphabet.

def vowel_cipher(string)
    vovels=["a","e","i","o","u"]
    arr=[]
    string.split("").each.with_index do |k,i|
            if !vovels.include?(k)
                arr << k
                elsif vovels.index(k)+1<5
                arr << vovels[vovels.index(k)+1]
                else
                        arr <<vovels[(vovels.index(k)+1)-5]
             end
    end
return arr.join("")
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap

# Write a method `pick_primes` that takes in an array of numbers and returns a new array containing only the prime numbers.

def pick_primes(numbers)
whole=numbers.select {|n| primess(n)}
return whole
end

def primess(number)
    total=0
    if number <2
       return false
    end
   (2...number).each do  |n|
  if number%n == 0
   total+=1
   end
end
if total>0
    return false
end
return true
 
end



print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts