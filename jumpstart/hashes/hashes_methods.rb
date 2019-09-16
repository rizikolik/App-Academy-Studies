personal_info={
    "name"=>"yunus",
    "age"=>26,
    "gender"=>"male",
    "is_handsome"=>false,
    "is_hungry_to_learn"=>true

}
puts personal_info
puts personal_info["name"]


#Iterate over whole array
personal_info.each do  |key,value|
    p key
    p value

end
puts "===="
#Iterate over the keys
personal_info.each_key do |key|
    puts key
end
puts "===="
#Iterate over the values
personal_info.each_value do  |values|
puts values
end

