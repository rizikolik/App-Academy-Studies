class Anagram
    attr_reader :all , :str
    def initialize(str1,str2)
        @str1=str1.split("")
        @str2=str2.split("")
        @all=[]
    end
    def possible_anagrams
        @all+=@str1.permutation.to_a
    end 
    def first_anagram?
    if possible_anagrams.include?(@str2)
        p true
    else
        p false
    end
    end
    def second_anagram?
   
    p    @str2.all?{ |char| @str1.index(char)>=0}
    end

  
end
newa=Anagram.new("elvis", "lives")
newa.first_anagram?
newa.second_anagram?