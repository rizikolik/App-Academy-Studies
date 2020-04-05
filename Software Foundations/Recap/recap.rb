def sort(arr,&proc)
    sorted=false
    while !sorted 
        sorted=true
        (0...arr.length-1).each do |i|
        
       if proc.call(arr[i],arr[i+1]) ==1
        arr[i],arr[i+1] = arr[i+1],arr[i]
        sorted=false
       end
    end
  
end
arr
end
p sort([1,12,5,2,7,3,9,11]) { |a,b| a<=>b}

p (sort(["h","a","b","s","i" ,"g"]) do |a,b|
    alp=("a".."z").to_a
alp.index(a)<=>alp.index(b)

end)
    