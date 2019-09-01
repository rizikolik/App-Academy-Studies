# Write a method `combinations` that takes in an array of unique elements, 
# the method should return a 2D array representing all possible combinations of 2 elements of the array.

def combinations(arr)
    combinations=[]
    arr.each.with_index do |el,idx|
        arr.each.with_index do |el1,idx1|
            if  idx<idx1
                combinations.push([el,el1])
            end
        end
    end
    return combinations


end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts 

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts "================"

# Write a method `opposite_count` that takes in an array of unique numbers.
# The method should return the number of pairs of elements that sum to 0.

def opposite_count(nums)
    opposites=[]
    nums.each.with_index do |num,idx|
        nums.each.with_index do |num2,idx2|
          if idx2>idx && (num+num2)==0
            opposites.push([num,num2])
          end

        end
    end
    return opposites.length

end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1
puts "================"

# Write a method `two_d_Sum` that takes in a two dimensional array and returns the sum of all elements in the array.

def two_d_sum(arr)
    total=0
    arr.each do |num|
        num.each do |num2|
            total+=num2
        end
    end
    return total

end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15
puts "================"
