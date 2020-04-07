def no_dupes?(array)
   hash=Hash.new(0)
   array.each{|ele| hash[ele]+=1}
  hash.keys.select{|k| hash[k]==1}
end


def no_consecutive_repeats?(array)
arr=[]
len=array.length
array.each.with_index do |k,i|
arr << k if  k!=arr[(i+1)%len]&&k!=arr[(i-1)%len]
end
 arr ==array
end


def char_indices(str)
    hash=Hash.new([])
    str.each_char.with_index  do |c,i|
        if hash.has_key?(c)
            hash[c] << i
        else
            hash[c]=[i]
        end
end
hash
end

def longest_streak(str)
      hash=Hash.new(0)
    str.each_char.with_index do |c,i|
        if c==str[i+1]|| c==str[i-1]
            hash[c]+=1
        end 
    end
    sorted = hash.sort_by { |str, n| n }
    sorted.last[0]*sorted.last[1]
end


 def prime?(num)
    return false if num<2
    (2...num).each do |ele|
     return false  if num%ele==0
    end
    true
 end

def bi_prime?(num)
    bol=[]
    (2...num).each do  |key|
        if num%key==0 &&prime?(key)
            bol << key
        end
     end
     bol.any? do |ele|
        b=num/ele*1.0 
         bol.include?(b)
     end

end

def vigenere_cipher(message, keys)

	newa=""
alp=("a".."z").to_a
	len=message.length
	arr=[]
	
	
(len).times { keys.each{|k| arr <<k}}
	message.each_char.with_index  do |c,i|
	
	newa+=alp[((alp.index(c)+arr[i])%alp.length)]
		
	
	end
newa
end
p vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
p vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
p vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
p vigenere_cipher("zebra", [3, 0])            # => "ceerd"
p vigenere_cipher("yawn", [5, 1])             # => "dbbo"























