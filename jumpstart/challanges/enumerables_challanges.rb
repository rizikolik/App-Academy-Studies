# 1) Write a method `to_initials` that takes in a person's name string
# and returns a string representing their initials.

def to_initials(name)
    arr=name.split(" ")
    init=[]
    init.push(arr[0][0],arr[1][0])
    return init.join("")
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"
puts "=================================="

# Write a method `first_in_array` that takes in an array and two elements, 
# the method should return the element that appears earlier in the array.

def first_in_array(arr, el1, el2)
   if(arr.index(el1)<arr.index(el2))
    return el1
   else
    return el2
   end
end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"
puts "=================================="

# Write a method `abbreviate_sentence` that takes in a sentence string and 
#returns a new sentence where every word longer 
# than 4 characters has all of it's vowels removed.

def abbreviate_sentence(sent)
    word=""
    arr=sent.split(" ")
    arr.each do |elem|
        if elem.length>4
            word+=" "+ vovel_remover(elem)
        else
            word+=" "+ elem
        end
    end
    return word
end
def vovel_remover(word)
    vovel="aeiou"
    wor=""
    word.each_char  do |let|
        if !vovel.index(let)
            wor+=let
        end
    end
    return wor
end


puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"
puts "=================================="

# Write a method `format_name` that takes in a name string and returns the name properly capitalized.

def format_name(str)
  arr=[]
    str.downcase.split(" ").each do |elem| 
        arr.push(elem.capitalize)
    end
    return arr.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
puts "=================================="


# Write a method `is_valid_name` that takes in a string and returns a boolean indicating whether or not it is a valid name.

# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)
    arr=str.split(" ")
    arr2=[]
    if arr.length>=2
        arr.each do |elem|
            elem2=elem.downcase
           elem2[0]=elem2[0].upcase
           arr2.push(elem2)
        end
        if arr2.join(" ") ==str
            return true 
         else
            return false
         end
    else
        return false
      
    end
end


puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false
puts "=================================="

# Write a method `is_valid_email` that takes in a string and returns a boolean indicating whether or not it is a valid email address.

# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
   letters= "abcdefghijklmnopqrstuvwxyz"
   arr=str.split("@")

   if arr.length==2&&arr[0].downcase===arr[0]&&arr[1].split(".").length==2
        arr[0].each_char do |char|
            if !letters.index(char)
                return false
            end
        end
        return true
   else return false
    end
     
 end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false

puts "=================================="

# Write a method `reverse_words` that takes in a sentence string and returns the sentence with the order of the characters in each word reversed.
# Note that we need to reverse the order of characters in the words, do not reverse the order of words in the sentence.

def reverse_words(sent)
    arr=sent.split(" ")
    newarr=[]
    arr.each do |elem|
        newarr.push(elem.reverse)
    end
    return newarr.join(" ")

end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'
puts "=================================="


# Write a method `rotate_array` that takes in an array and a number.
# The method should return the array after rotating the elements the specified number of times.
# A single rotation takes the last element of the array and moves it to the front.

def rotate_array(arr, num)
num.times do
    elem=arr.pop
    arr.unshift(elem)
    
    end
return arr

end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ] = [b,c,d,a]
puts


