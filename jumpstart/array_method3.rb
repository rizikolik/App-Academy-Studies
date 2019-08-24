arr=["hello","world","hi","hi","hi"]


#Index method gives the  index of an element .
print arr.index("hello")
puts
#If there are a lot of from same element it just gives the first index
print arr.index("hi")
puts

 #Include merhod gives us a  boolean return if an element is in the array or not .
print arr.include?("hello")
puts

#Include and index methods for Strings .

str="hello world!"
print str.index("h")
puts

print str.include?("!")
puts
print str.include?("hello")
puts

print str.index("hel")
puts