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