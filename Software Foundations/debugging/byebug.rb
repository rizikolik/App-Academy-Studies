require ("byebug")
def average(num1,num2)
  total=num1+num2
  total/2
end
debugger
first=average(10,20)
second=first+0.5
p second