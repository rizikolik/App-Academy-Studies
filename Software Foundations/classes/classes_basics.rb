class Cat
    def initialize(name, color, age)
      @name = name
      @color = color
      @age = age
    end
  
    
  # getter
  def age
    @age
  end

  # setter
  def age=(number)
    @age = number
  end
  end
  
  cat_1 = Cat.new("Sennacy", "brown", 3)
  p cat_1.age# "Sennacy"
  cat_1.age=2 # used setter method .
  p cat_1.age