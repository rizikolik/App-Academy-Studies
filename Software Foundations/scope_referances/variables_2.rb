arr=Array.new(3,0)
p arr # create a new array with 3 length and every element is 0.

arr1=Array.new(3,Array.new(3,0)) # Created a 3d array .
p arr1

# Things will be differeant now .

arr1[0][0]="Y"   # This will effect whole arr1 ..
p arr1
# Ruby has a uniq method for creating uniq sub arrays .
arr2=Array.new(3) {Array.new(3)}
p arr2
 arr2[0][0]="Y"  # Now i can change a sub array .Because now i use differant memory slots.

p arr2
