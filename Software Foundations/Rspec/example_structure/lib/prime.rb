def prime?(num)
    return false if num<2
    (2...num).each do |ele|
    return false if num % ele == 0
    end
return true
end