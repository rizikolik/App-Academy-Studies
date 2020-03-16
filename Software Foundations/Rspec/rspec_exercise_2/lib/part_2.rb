def palindrome?(str)
    reversed=[]
    arr=str.split("")
   arr.each do |char|
      reversed.unshift(char)
    end
    reversed.join("") == str
end

def substrings(str)
    substrings=[]

    (0..(str.length-1)).each do |ele|
            (ele...str.length).each do |idx2|
                substrings << str[ele..idx2]
            end
    end
    substrings
end

def palindrome_substrings(str)
   substrings(str).filter {|sub| palindrome?(sub)&&sub.length>1}


    
end




