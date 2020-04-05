def factorial(n)   # Factorial With Recursion
    return 1 if n == 1
    n * factorial(n - 1);
  end
  
 p  factorial(5) # => 120


 def fibonacci(n)
  return 1 if n==1 ||n==2
  fibonacci(n - 1) + fibonacci(n - 2)
 end

 p fibonacci(10)