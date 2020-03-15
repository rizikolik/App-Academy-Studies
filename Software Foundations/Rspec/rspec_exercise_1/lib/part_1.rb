def average(num_1,num_2)
return (num_1+num_2)/2.0

end

def average_array(arr)
total=0.0
arr.each do |k|
    total+=k
end
total/arr.length

end

def repeat(str,num)
str*num

end
def yell(str)
    str.upcase!+"!"
end
def alternating_case(str)
arr=str.split(" ")
arr.map!.each.with_index do |k,idx|
    if idx%2!=0
        k.downcase
    else
        k.upcase
    end



end
arr.join(" ")
end