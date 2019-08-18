# Write a method `number_check(num)` that takes in a number and returns a string. 
# The method should return the string 'positive' if the num is positive, 'negative' if the num is negative, and 'zero' if the num is zero.

def number_check(num)
    if(num>0)
        puts "positive"
    elsif num==0
        puts "zero"
    elsif num<0
        puts "negative"
    end


end

puts number_check(5)    # => "positive"
puts number_check(-2)   # => "negative"
puts number_check(0)    # => "zero"

# Write a method `word_check(word)` that takes in a word and returns a string.
# The method should return the string "long" if the word is longer than 6 characters, "short" if it is less than 6 characters, 
# and "medium" if it is exactly 6 characters long.

def word_check(word)
    if(word.length>6)
        puts "long"
    elsif(word.length==6)
        puts "medium"
    elsif(word.length<6)
        puts "short"
    end
end


puts word_check("contraption") # => "long"
puts word_check("fruit")       # => "short"
puts word_check("puzzle")      # => "medium"