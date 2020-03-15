def prime?(num)  # iteration 1
    (2...num).each do |i|
        return false if num % i == 0
      end
      return true
end


# desired output
p prime?(6) # => false
p prime?(8) # => false
p prime?(9) # => false


def prime?(num)  #iteration 2
    (2...num).each do |i|
        return false if num % i == 0
      end
      return true
end


# desired output
p prime?(2) # => true

def prime?(num)  #iteration 3
    return false if num <2
    (2...num).each do |i|
        return false if num % i == 0
      end
      return true
end


# desired output
p prime?(1) # => true