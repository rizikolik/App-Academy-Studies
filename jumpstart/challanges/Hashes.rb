# Write a method `get_double_age` that takes in a hash and returns twice the "age" value of the hash.

def get_double_age(hash)
   return hash["age"]*=2 
end

puts get_double_age({"name"=>"App Academy", "age"=>5}) # => 10
puts get_double_age({"name"=>"Ruby", "age"=>23})       # => 46
puts "==============================================="
# Write a method `get_full_name` that takes in a hash containing a first, last, and title.
# The method should return a string representing the hash's full name

def get_full_name(hash)
full_name=""
hash.each_value do |value|
    full_name+=value+" "
end
return full_name
end

hash1 = {"first"=>"Michael", "last"=>"Jordan", "title"=> "GOAT"}
puts get_full_name(hash1) # => "Michael Jordan, the GOAT"

hash2 = {"first"=>"Fido", "last"=>"McDog", "title"=> "Loyal"}
puts get_full_name(hash2) # => "Fido McDog, the Loyal"
puts "==============================================="
# Write a method `word_lengths` that takes in a sentence string and returns a hash where every key is a word of the sentence, 
# and its' corresponding value is the length of that word.

def word_lengths(sentence)
    hash=Hash.new(0)
    sentence.split(" ").each do |element|
    hash[element]=element.length
    end
return hash
end

puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}
puts "==============================================="

# Write a method `retrieve_values` that takes in two hashes and a key. 
# The method should return an array containing the values from the two hashes that correspond with the given key.

def retrieve_values(hash1, hash2, key)
    return [hash1[key],hash2[key]]

end


dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}
print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
puts "==============================================="

# Write a method `cat_builder` that takes in a name, color, and age.
# The method should return a hash representing a cat with those values.

def cat_builder(name_str, color_str, age_num)
return hash={
    "name"=>name_str,
    "color"=>color_str,
    "age"=>age_num
}
end

print cat_builder("Whiskers", "orange", 3) #=> {"name"=>"Whiskers", "color"=>"orange", "age"=>3}
puts

print cat_builder("Salem", "black", 100) #=> {"name"=>"Salem", "color"=>"black", "age"=>100}
puts
puts "==============================================="
# Write a method `ae_count` that takes in a string and returns a hash containing the number of a's and e's in the string.
# Assume the string contains only lowercase characters.

def ae_count(str)
    counter=Hash.new(0)
    str.each_char do |char|
        if char=="a"|| char=="e"
            counter[char]+=1
        end
    end
    return counter


end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}
puts "==============================================="

# Write a method `element_count` that takes in an array and returns a hash representing the count of each element in the array.

def element_count(arr)
    counter=Hash.new(0)
    arr.each do |elem|
        counter[elem]+=1
    end
    return counter

end

puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}
puts "==============================================="

# Write a method `select_upcase_keys` that takes in a hash and returns a new hash containing key-value pairs of the original hash that had uppercase keys.
# You can assume that the keys will always be strings.

def select_upcase_keys(hash)
    upper_hash={}
    hash.each_key do |elem|
    if elem.upcase==elem
        upper_hash[elem]=hash[elem]

    end
    end
    return upper_hash

end

print select_upcase_keys({"make"=> "Tesla", "MODEL"=> "S", "Year"=> 2018, "SEATS"=> 4})
# => {"MODEL"=>"S", "SEATS"=>4}
puts
puts "==============================================="

print select_upcase_keys({"DATE"=>"July 4th","holiday"=> "Independence Day", "type"=>"Federal"}) # => {"DATE"=>"July 4th"}
puts
puts "==============================================="

# Write a method `hand_score` that takes in a string representing a hand of cards and returns it's total score.
# You can assume the letters in the string are only A, K, Q, J. 
# A is worth 4 points, K is 3 points, Q is 2 points, and J is 1 point. 
# The letters of the input string not necessarily uppercase.

def hand_score(hand)   #This solution is so absurd ..It was very easy normally .But i solved in the absurd way..
    counter=Hash.new(0)
    hand.each_char do |char|
      if char.upcase=="A"
        counter["A"]+=4
      elsif char.upcase=="K"
        counter["K"]+=3
      elsif char.upcase=="Q"
        counter["Q"]+=2
      elsif char.upcase=="J"
        counter["J"]+=1
      end
    end
    total=0
    counter.each_value { |value| total+=value}
return total
end

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9
puts "==============================================="

# Write a method `frequent_letters` that takes in a string and returns an array containing the characters that appeared more than twice in the string.

def frequent_letters(string)
frequent=Hash.new(0)
arr=[]
string.each_char {|char| frequent[char]+=1}
frequent.each do |k,v|
if v>2
    arr<<k
end
end
return arr
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts
puts "==============================================="

# Write a method `hash_to_pairs` that takes in a hash and returns a
# 2D array representing each key-value pair of the hash.

def hash_to_pairs(hash)
pairs=[]
hash.each do |k,v|
    pairs << [k,v]
end
return pairs

end

print hash_to_pairs({"name"=>"skateboard", "wheels"=>4, "weight"=>"7.5 lbs"}) #=> [["name", "skateboard"], ["wheels", 4], ["weight", "7.5 lbs"]]
puts

print hash_to_pairs({"kingdom"=>"animalia", "genus"=>"canis", "breed"=>"German Shepherd"}) #=> [["kingdom", "animalia"], ["genus", "canis"], ["breed", "German Shepherd"]]
puts
puts "==============================================="

# Write a method `unique_elements` that takes in an array and returns a new array where all duplicate elements are removed.
# Solve this using a hash.

def unique_elements(arr)
    counter=Hash.new(0)
    non_duplicate=[]
    arr.each {|elem| counter[elem]+=1}
    counter.each do |key,value|
         non_duplicate<< key
     end
    return non_duplicate

end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts
puts "==============================================="

# Write a method `element_replace` that takes in an array and a hash. 
# The method should return a new array where elements of the original array are replaced with their corresponding values in the hash.

def element_replace(arr, hash)
    replaced=[]
    arr.each do |element|
        if hash[element]!=nil
       replaced<<hash[element]
        else
            replaced<<element
        end
    end
    return replaced

end

arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
hash1 = {"Serena Williams"=>"tennis", "LeBron James"=>"basketball"}
print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
puts

arr2 = ["dog", "cat", "mouse"]
hash2 = {"dog"=>"bork", "cat"=>"meow", "duck"=>"quack"}
print element_replace(arr2, hash2) # => ["bork", "meow", "mouse"]
puts
puts "==============================================="
