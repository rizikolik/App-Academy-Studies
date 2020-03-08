def greet(first_name, last_name)
    p "Hey " + first_name + ", your last name is " + last_name
end

names = ["grace", "hopper"]
# greet(names)    # We need to use splat operator for making this array as 2 arg.
greet(*names)