arr=[1,2,3,4,5]
print arr .reverse
puts
arr=["hello",1,2]
#The Reverse method with a "! " changes the original array.
print arr .reverse!
puts

print arr 
puts
str="hello world!"
puts str.reverse
puts

#Palindrome Checker

def is_palindrome(str)
    return str==str.reverse
end

print is_palindrome("olo")
puts
print arr
puts

 arr=["a","b","c","d","e","f"]
#Array slice method with (..) This includes starting and ending indexes
print arr[1..2]
puts

#Array slice method with (... ) This excludes  ending index and include start index
print arr[2...4]
puts

