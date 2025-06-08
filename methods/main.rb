def my_name
  "Joe Smith"
end

puts my_name 

def greet name
  "Hello there #{name}"
end

name = gets.chomp

puts greet name

#last evaluated line is returned

def even_odd(number)
  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(16) #=>  That is an even number.
puts even_odd(17) #=>  That is an odd number.

#explicit return to stop the flow of code

def check_even_odd(number)
  unless number.is_a? numeric
    return 'A number has to be entered'
  end
  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

#method chaining

phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize

#predicate methods - return boolean

def even? (number)
  if number % 2 == 0
    true
  else
    false
  end
end
