# Debug this code to pass rspec! There are 3 mistakes to fix.

# Write a method, letter_count, that accepts a string and char as args. 
# The method should return the number of times that the char appears in the string.

require "byebug"

def letter_count(string, char)
    count =0 # 1) began with nil
    string.each_char do |c| 
        count += 1 if c.upcase == char.upcase  # 2) upcase and downcase # 3) Must used == instead of = sign.
    end
    count
end
