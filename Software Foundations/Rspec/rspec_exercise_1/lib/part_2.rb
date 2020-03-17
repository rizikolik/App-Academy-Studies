def hipsterfy(str)
    vovels="aeiou"
if !str.each_char.any?{|ele|  vovels.include?(ele)} 
    str
else
str.reverse.sub(/[a,e,i,o,u]/,"").reverse
end

end

def  vowel_counts(str)
    hash=Hash.new(0)
    vovels="aeiou"
        str.each_char do |char|
            if vovels.include?(char.downcase)
                hash[char.downcase]+=1
            end
        end
       hash
end

def caesar_cipher(message,num)
    alp="abcdefghijklmnopqrstuvwxyz"
    message.each_char.with_index do |char,idx|
        if alp.include?(char)
            if (alp.index(char)+num)<alp.length
                message[idx]=alp[alp.index(char)+num]
            else
                message[idx]=alp[(alp.index(char)+num-alp.length)%alp.length]
            end
        else
            char
        end
        end
 message
end

