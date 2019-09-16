new_hash={"name"=>"yunus","num"=>3,"keys"=>"kdmdfdmf"}

#manupulate the hash
p new_hash["name"]
new_hash["name"]="yun"
new_hash["num"] +=1
p new_hash

new_hash["sayhello"]="hello everyone!"  #add a new key-value pair to  hash .

new_hash["keys"] <<"new keys to array"
print new_hash
## Hash key-values are arays.So we can use the array methods easily with them .

#Check if a hash has a spesific key (returns a boolean ) .Also they key strings are case sensitive!
print new_hash.has_key?("name")  #Expected to to be true..
print new_hash.has_value?(4)# Search a value ; returns boolean 


## How to learn whole keys of a  Hash:
puts " ========="
p new_hash.keys  # An array

p new_hash.keys.length
 p new_hash.keys[1]


 #How to  learn  values of a Hash;
 p new_hash.values  # An array

 p new_hash.values.length
  p new_hash.values[2]
  p new_hash.values[2][0]
