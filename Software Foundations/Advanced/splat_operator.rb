def greet(first_name, last_name)
    p "Hey " + first_name + ", your last name is " + last_name
end

names = ["grace", "hopper"]
# greet(names)    # We need to use splat operator for making this array as 2 arg.
greet(*names)

arr_1 = ["a", "b"]
arr_2 = ["d", "e"]
arr_3 = [ *arr_1, "c", *arr_2 ]
p arr_3 # => ["a", "b", "c", "d", "e"] # Also we can use splat operator to concat arrays .
# its like js ... splat operator .
old_hash = { a: 1, b: 2 }
new_hash = { **old_hash, c: 3 }
p new_hash # => {:a=>1, :b=>2, :c=>3}  
# Same for a hash .We can use splat to combine 2 hash together and split one .