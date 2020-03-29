
def add_and_proc(num_1, num_2, prc)
    sum = num_1 + num_2
    p prc.call(sum)
  end
  
  doubler = Proc.new { |num| num * 2 }
  add_and_proc(1, 4, doubler)   # => 10
  
  square = Proc.new { |num| num * num }
  add_and_proc(3, 6, square)    # => 81
  
  negate = Proc.new { |num| -1 * num }
  add_and_proc(3, 6, negate)    # => -9

  kare=Proc.new {|ele| ele*ele}
  add_and_proc(2,4,kare)

  doubler = Proc.new { |num| num * 2 }
p [1,2,3].map(&doubler) # => [2, 4, 6]  # Converting a prob and method each other with &

## Some useful infos about procs and lambdaS
def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda