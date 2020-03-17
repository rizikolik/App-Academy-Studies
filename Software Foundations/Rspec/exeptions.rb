num=5

begin
    puts "dividing 10 by #{num}"
    ans = 10 / num
    puts "the answer is #{ans}"

rescue 
    puts "There was an error with that division."
    
end




def name_caller(first_name,last_name)
        if !(first_name.instance_of?(String)&& last_name.instance_of?(String))
        raise  "arguments must be strings"
        end

        first_name.capitalize! + last_name.capitalize!
end



first_name = 42
last_name = true
begin
  puts format_name(first_name, last_name)
rescue
  # do stuff to rescue the "arguments must be strings" exception...
  puts "there was an exception :("
end
