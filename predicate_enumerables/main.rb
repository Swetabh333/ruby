numbers = [5,6,7,8]

element = 6

result = false

numbers.each do | number |
  if number == element
    result = true
    break 
  end 
end

puts result

#using include?

puts numbers.include?(element)

friends = ["Sharon", "Leo", 'Leila', "Brian", "Arun"]

invitede_list = friends.select { |friend| friend != "Brian" }

invitede_list.include?("Brian")

# using any?
#

numbers = [21, 42, 303 , 499, 550, 811]

puts numbers.any? { |number| number > 500 }

puts numbers.any? { |number| number < 20 }

#using all? 

fruits = ["apple", "banana" , "pineapple"]

puts fruits.all? { |fruit| fruit.length > 3 }

puts fruits.none? { |fruit| fruit.length > 10 }



