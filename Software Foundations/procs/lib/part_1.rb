def my_map(arr,&prc)
array=[]

    arr.each do |key|
  array<<   prc.call(key)
    
    end
    array
end

def my_select(array,&prc)
selected=[]
array.each do |key|
    if prc.call(key)
        selected<< key
    end
end
selected 
end

def my_count(array,&prc)
counter=0
array.each do |key|
if prc.call(key)
    counter+=1
end

end
counter
end

def my_any?(array,&prc)
array.each do |key|
if prc.call(key)
    return true
end
end
return false
end

def my_all?(array,&prc)
    array.each do |key|
    if !prc.call(key)
        return false
    end
    end
    return true
    end
    def my_none?(array,&prc)
        array.each do |key|
        if prc.call(key)
            return false
        end
        end
        return true
        end
