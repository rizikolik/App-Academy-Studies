class Hangman
DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
def self.random_word
  DICTIONARY.sample
end
def initialize
  @secret_word=Hangman.random_word
  @guess_word=Array.new(@secret_word.length, "_")
  @attempted_chars=[]
  @remaining_incorrect_guesses=5
end
def guess_word
  @guess_word
end
def attempted_chars
  @attempted_chars
end
def remaining_incorrect_guesses
  @remaining_incorrect_guesses
end
def already_attempted?(char)
 @attempted_chars.include?(char)
 
end
def get_matching_indices(char)
  arr=[]
  @secret_word.each_char.with_index do |c,i|
    if c==char
      arr << i 
    end
  end
  arr
end
def fill_indices(char,array)
  array.each do |key|
    @guess_word[key]=char
  end
end

def try_guess(char)
    if self.already_attempted?(char)
    puts 'that has already been attempted'
      return false
    end
    @attempted_chars << char
    newa=self.get_matching_indices(char) 

    if newa.empty?
      @remaining_incorrect_guesses-=1
    else
    self.fill_indices(char,get_matching_indices(char))
    end
    true
end
def ask_user_for_guess
  puts "Enter a char: "
  char=gets.chomp
  try_guess(char)
end
def win?
  if  @guess_word.join("") == @secret_word
    puts "WIN"
    return true
  else  
    return false
  end
end
def lose?
    if @remaining_incorrect_guesses==0
      puts "LOSE"
      return true
    elsif @remaining_incorrect_guesses!=0
    return false
    end
  end
def game_over?
if win? ||lose?
  puts "The secret word is : #{@secret_word}"
return true
end
false
end

end

