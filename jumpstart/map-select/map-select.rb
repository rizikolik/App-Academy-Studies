arr=["a","b","c"]
# map is just like javascripts map method .ıt gives a new array .
new_arr=arr.map {|elem|  elem.upcase}
#p new_arr


# array.select does the same job as the js array filter method.
arr=[1,2,3,4,5,6,7,8]

arr2= arr.select {|ele| ele%2==0}

#puts arr2

arr3=["hello","RUBY","darKK"]

newarray=arr3.map{|word| word[0].upcase + word[1..-1].downcase}
puts newarray
 # Also we can use map and select with other methods like do 
mapwith_do=arr3.map.with_index do |ele,idx|
firstone=ele[0].upcase
otherones=ele[1..-1].downcase
newword=firstone+otherones
newword*idx

end
puts mapwith_do


