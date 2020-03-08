## Some useful methods for writing a dry code !
arr =[1,2,3,4,5,6,7,8]
puts arr.all?{|ele| ele.even?} 
puts arr.any?{|el| el.even?} 
puts arr.none?{|ele| ele.even?}
 p arr.one?{|ele| ele.even?} # Works for in case of just only 1 one the iterations true !

 
 p arr.count {|el| el.even?} # Gives the number of the results that compatible with the search .

 p arr.sum
 p arr.max
 p arr.min

 multi= [
    [["a", "b"], "c"],
    [["d"], ["e"]],
    "f"
]

p multi.flatten  # Very useful for converting an 2D array into 1 .


str="hello"
symbol=:hello
p str==symbol # Ruby has another data type named symbols.they are immutable so we cant change them .
p "hello".object_id   # Every one of these has a differant memory slot .
p "hello".object_id   
p "hello".object_id  
# If we don't intend to mutate the string, we can use a symbol to save some memory. 
p :hello.object_id 
p :hello.object_id


my_bootcamp = { :name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"] }
p my_bootcamp           # => {:name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"]}
p my_bootcamp[:color]  # Symbols are the keys at the hashes .
p my_bootcamp[:name]  # colon at the left side of  the key !

def method(hash)
    p hash  # {"location"=>"SF", "color"=>"red", "size"=>100}
end

method({"location"=>"SF", "color"=>"red", "size"=>100}) # Could use the hash without braces.

# this also works:
method("location"=>"SF", "color"=>"red", "size"=>100)

def modify_string(str, options={"upper"=>false, "repeats"=>1}) # Defining Default values are useful .
    str.upcase! if options["upper"]                             # These are best way to write dry  and clean code in Ruby.
    p str * options["repeats"]
end

modify_string("bye")   # => "bye"
modify_string("bye", "upper"=>true, "repeats"=>3)

