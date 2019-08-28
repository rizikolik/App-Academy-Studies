days=["monday","tuesday","wednesday"]
#Array.each method gives us an iteration over the array .

days.each{|day| puts day}  # 1)This  is good for a 1 line of code with itreation.

days.each do |day|  # 2) This " do " iteration is good for when we need a lot things to do with this iteration
  
    puts day
    puts "==========="
end

# 3) If we need the index of the elements of an array this method is the solution.
days.each.with_index do |day,idx|
   
    puts day,idx
    puts "==========="
end

#Enumerable Iteration  for strings

#1) Simple iteration with do
str="hello world"
str.each_char do |char| 
    puts char
    puts "==========="
end

# 2)Iteration with indexes

str.each_char.with_index do |char,idex| 
   
    puts char,idex
    puts "==========="
end
