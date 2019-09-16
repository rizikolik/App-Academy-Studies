#Create a new empty Hash with this method and make the initial values of the keys "nil " or anything else you want.

newly_created=Hash.new(nil)

puts  newly_created["A"]==nil

#Learn the Total amount of  each letter of a string with starting a empty Hash. Great Method ..
hash=Hash.new(0) # Start the hash with a 0 initial value.
str="hello woroolddd"
str.each_char {|char| hash[char]+=1}
puts hash


##Sort By With Hashes

str="hello gooood boysss  out there !"
counter=Hash.new(0)

str.each_char do |char|
    counter[char]+=1
end
puts "==============="
    puts counter
    p counter.sort_by { |k,v| v} # This sorts the values of the result of the total count of the every letters from lower to higher .
    p counter.sort_by { |k,v| k} #Ruby will sort the keys  alphabetically.