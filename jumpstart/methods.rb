#Define a Method With Def 
def sayMyName
    puts "hello Yunus!"
end

#Call the Method
 sayMyName


 def say_date(data1)
    puts "the date is " +data1
 end
var=32


let=54
if let<49
    puts"yes"
elsif let >40
    puts "no"
else
    puts "third answer"
end

def average_counter(num1,num2,num3)
    average=(num1+num2+num3)/3
    return average
end



def either_only(num)
    if(num%3==0||num%5==0)
        if !(num%3==0&&num%5==0)
            puts("herlllooo")
        else
            puts "both"
        end
    else
       puts "none of them"
        
    end
end




 either_only(12)       