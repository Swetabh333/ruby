friends = ["Sharon", "Leo", 'Leila', "Brian", "Arun"]
invited_list = []

for friend in friends do
  if friend != "Brian"
    invited_list.push(friend)
  end
end

puts invited_list #=> ["Sharon", "Leo", 'Leila',"Arun"]

#select returns a new array
friends.select { |friend| friend != "Brian" } #=> ["Sharon", "Leo", "Leila", "Arun"]

#similar result can be acheived with

friends.reject { |friend| friend == "Brian" }

#each method

friends.each { |friend| puts "Hello, " + friend }

# if block logic is more than one line it's better to use do-end
#

my_array = [1,2]

my_array.each do |num|
  num *=2
  puts "The new number is #{num}."
end

# Each also works with hashes

my_hash = { "one" => 1, "two" => 2  }

my_hash.each { |key,value| puts "#{key} is #{value}"  }

my_hash.each { |pair| puts "the pair is #{pair}" }

#each_with_index

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit,index| puts fruit if index.even? }

#Each does not modify the original array or nor does it return a new array , map modifies and returns new array

friends = ["Sharon", "Leo", "Leila" , "Arun"]

friends.map { |friend| friend.upcase }

my_order = [ "medium Big Mac", "medium fries" , "medium milkshake" ]

mod = my_order.map { |item| item.gsub("medium", "extra large") }

puts "mod is #{mod}"

responses = { "Sheila" => "yes" , "Leo" => "no", "Leila"=> "no", "Arun" => "yes" }
responses.select { |person, response| response == "yes"  }

#redeuce method

my_numbers = [ 5,6,7,8 ]
sum = 0

my_numbers.each { |number| sum+= number }

my_numbers.reduce { |accumulator, number| accumulator + number }

#setting a different initial value for accumulator

my_numbers.reduce(1000) { |accum, number| accum + number }

votes = ["Bob's burger" , "St Mark's Bistro", "Burger Shack"]

votes.reduce(Hash.new(0)) do |result , vote|
  result[vote] +=1
  result
end

#Bang methods 
friends.map! { |friend| friend.upcase } # changes the original array

#same for select



