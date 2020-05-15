class Dog
    # defines a class method that will define more methods; this is
    # called a **macro**.
  
    def self.makes_sound(name)
      define_method(name) { puts "#{name}!" }
    end
  
    makes_sound(:woof)
    makes_sound(:bark)
    makes_sound(:grr)
  end
  
#   dog = Dog.new
#   dog.woof
#   dog.bark
#   dog.grr

  class Cat
  def say(anything)
    puts anything
  end

  def method_missing(method_name)
    method_name = method_name.to_s
    if method_name.start_with?("say_")
      text = method_name[("say_".length)..-1]

      say(text)
    else
      # do the usual thing when a method is missing (i.e., raise an
      # error)
      super
    end
  end
end

earl = Cat.new
earl.say_hello # puts "hello"
earl.say_goodbye # puts "goodbye"