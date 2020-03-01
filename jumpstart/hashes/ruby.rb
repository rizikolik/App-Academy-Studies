#this will be first line of code of me about 4 months later
# hashe's keys are case sensitive cause they are strings .
 my_hash={
     "name"=>"yunus",
     "color"=>"normal",
     "age"=>27
 }
 puts my_hash
 puts my_hash["name"]
 puts my_hash["age"]


 new_hash={
    "name"=>"sdad",
    "color"=>"normal",
    "age"=>27,
    "likes"=>["football","tennis","walk"]
 }
  new_hash["location"]="Turkey"   ## this will add a new key value pair to the hash .
 puts new_hash.length  ## this will give the number of the keys in an array .
 puts new_hash

 puts  new_hash.has_key?("age") # usefull when we are searching a big hash's keys.
        new_hash.has_value?("age") # usefull when we are searching a big hash's values.
print  new_hash 
puts "===" 
p  new_hash     
