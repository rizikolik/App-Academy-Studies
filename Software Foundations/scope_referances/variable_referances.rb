word="hello"
p word.object_id
word2="hello"
p word2.object_id
word3="cat";
word4=word3
p word3.object_id
p word4.object_id  # at first they are same ..
word3[2]="m "
 p word3.object_id
p word4.object_id
str="modify"
puts "======"
p str.object_id
str.upcase! # ! here makes the change str origin .. normally with upcase method it creates a new str .
p "upcase", str.object_id # mutating doesnt chnage the id
str[0]="c"
p  "change some" , str.object_id
str="dsnjn"
p "reassign", str.object_id #reassigning  change the object id.

