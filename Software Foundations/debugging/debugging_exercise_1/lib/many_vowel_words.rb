# Debug this code to pass rspec! There are 2 mistakes to fix.

# Write a method, many_vowel_words, that accepts a sentence string as an arg. 
# The method should return a new sentence containing only the words that contain two or more vowels.

require "byebug"

def many_vowel_words(sentence)
    words = sentence.split(" ") # Split method was wrong .

    new_words = words.select do |word|
        num_vowel = num_vowels(word)
        num_vowel >= 2
    end

    new_words.join(" ")
end

def num_vowels(word)
    count = 0
    word.each_char do |char|
        count += 1 if "aeiou".include?(char) #Not includes ! 
    
    end

    count
end
