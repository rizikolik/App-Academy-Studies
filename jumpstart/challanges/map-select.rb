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