# Write a method, grid(n, m), that accepts two numbers as args.
# The method should return a 2D array with n rows and m columns (this means that there are n subarrays, each of length m).

def grid(n, m)
arr=Array.new(n) {Array.new(m)}
	return arr
end

result_1 = grid(2, 3)
p result_1              # => [[nil, nil, nil], [nil, nil, nil]]
result_1[0][0] = "X"
p result_1              # => [["X", nil, nil], [nil, nil, nil]]


result_2 = grid(4, 2)
p result_2              # => [[nil, nil], [nil, nil], [nil, nil], [nil, nil]]
result_2[0][0] = "Q"
p result_2              # => [["Q", nil], [nil, nil], [nil, nil], [nil, nil]] 

puts "================"

# Write a method, ele_replace!(array, hash), that accepts an array and a hash as args.
# The method should mutate the given array by replacing elements with their corresponding values in the hash.
# The method should return the given array.
#
# Note: this method must MUTATE the input array. This means that the object_id of the input array should be identical
# to the object_id of the returned array. The exact object_ids you get back don't matter. We just want the ids
# to be the same before and after calling your method.

def ele_replace!(array, hash)
	array.each do |k|
		if hash.has_key?(k)
		k=hash[k]
		else k
		end
		
	end
	return array
end


array_1 = [4, 2, 0, 2]
p array_1.object_id         # => 70119569670520
result_1 = ele_replace!(array_1, {2=>"two", 0=>"zero", 5=>"five"})
p result_1                  # => [4, "two", "zero", "two"]
p result_1.object_id        # => 70119569670520


array_2 = ["Matthias", "Simcha", "Mashu", "David"]
p array_2.object_id         # => 70119569668160
result_2 = ele_replace!(array_2, "Matthias"=>"J", "Mashu"=>"D")
p result_2                  # => ["J", "Simcha", "D", "David"]
p result_2.object_id        # => 70119569668160
puts "============="


# Write a method, my_rotate!(array, amt), that accepts an array and a number as args.
# The method should mutate the array by rotating the elements 'amt' number of times. 
# When given a positive 'amt', a single rotation will rotate left, causing the first element to move to the last index
# When given a negative 'amt', a single rotation will rotate right, causing the last element to move to the first index
# The method should return the given array.
# Do not use the built-in Array#rotate
# 
# Note: this method must MUTATE the input array. This means that the object_id of the input array should be identical
# to the object_id of the returned array. The exact object_ids you get back don't matter. We just want the ids
# to be the same before and after calling your method.


def my_rotate!(array, amt)
<<<<<<< HEAD
	rotate=false
while amt<0
	rotate=true
	array.each.with_index do |k,idx|
		array[idx+1],array[idx-1]=k,array[idx-1]
=======
if amt <0
	amt.abs.times do
		el = array.pop
		array.unshift(el)
	end
else
	amt.times do 
	el=array.shift()
	array << el
	
>>>>>>> 4fdbcfab4348806078716e061e26d4bf0417ff9c
	end
	rotate=false
	amt+=1
end
<<<<<<< HEAD
return array		
=======
return array
>>>>>>> 4fdbcfab4348806078716e061e26d4bf0417ff9c
end


array_1 = ["a", "b", "c", "d"]
p array_1.object_id                 # => 70354216023780
result_1 = my_rotate!(array_1, 2)
p result_1                          # => ["c", "d", "a", "b"]
p result_1.object_id                # => 70354216023780


array_2 = ["NOMAD", "SOHO", "TRIBECA"]
p array_2.object_id                 # => 70354216019660
result_2 = my_rotate!(array_2, 1)
p result_2                          # => ["SOHO", "TRIBECA", "NOMAD"]
p result_2.object_id                # => 70354216019660


array_3 = ["a", "b", "c", "d"]
p array_3.object_id                 # => 70354216016500
result_3 = my_rotate!(array_3, -3)
p result_3                          # => ["b", "c", "d", "a"]
p result_3.object_id                # => 70354216016500
puts "=================="


# Write a method, scalar_multiple!(array, multiplier), that accepts an array and a number as args. 
# The method should mutate the given array by multiplying all of the elements by the multiplier.
# The method should return the given array.
# 
# Note: this method must MUTATE the input array. This means that the object_id of the input array should be identical
# to the object_id of the returned array. The exact object_ids you get back don't matter. We just want the ids
# to be the same before and after calling your method.

def scalar_multiple!(array, multiplier)
array.each.with_index do |k,idx|


	newvalue=k*multiplier
	array[idx]=newvalue
end
return array
end


array_1 = [7, 0, 4]
p array_1.object_id                             # => 70326264380840
result_1 = scalar_multiple!(array_1, 3)
p result_1                                      # => [21, 0, 12]
p result_1.object_id                            # => 70326264380840


array_2 = [90, 30, 4, 12]
p array_2.object_id                             # => 70326264378100
result_2 = scalar_multiple!(array_2, 0.5)
p result_2                                      # => [45.0, 15.0, 2.0, 6.0]
p result_2.object_id                            # => 70326264378100

puts "=================="

# Write a method, replace_char_at!(str, char, idx), that accepts a string, character, and an index as arguments. 
# The method should mutate the str by replacing the given idx of the str with the char. The method
# should return the str.
# 
# Note: this method must MUTATE the input str. This means that the object_id of the input string should be identical
# to the object_id of the returned string. The exact object_ids you get back don't matter. We just want the ids
# to be the same before and after calling your method.

def replace_char_at!(str, char, idx)
str[idx]=char
return str


end


str_1 = "hello"
p str_1.object_id                       # => 70120944788380
result_1 = replace_char_at!(str_1, "j", 0)
p result_1                              # => "jello"
p result_1.object_id                    # => 70120944788380


str_2 = "world"
p str_2.object_id                       # => 70120944769940
result_2 = replace_char_at!(str_2, "!", 2) 
p result_2                              # => "wo!ld"
p result_2.object_id                    # => 70120944769940
