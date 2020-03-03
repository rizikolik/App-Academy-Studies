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
asals=[2,3,5,7]
count=0
asals.each do |rakam|
if(num==rakam)
    count+=1
   return true
   
end
if(num%rakam!=0)
    count+=1
end
end

end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false