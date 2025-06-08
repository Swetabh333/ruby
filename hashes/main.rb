my_hash = {   
  "a random word" => "ahoy",
  "Dorothy's maths score" => 94,
  "an array" => [1,2,3],
  "an empty hash within a hash" => {}
}

my_hash2 = Hash.new

hash = { 9 => "nine", :six => 6 }

shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

puts shoes["summer"]

#puts shoes.fetch("hiking")


puts shoes.fetch("hiking","hiking boots") #default val

shoes["fall"] = "sneakers" # adding value
shoes["summer"] = "flip-flops" #updating value

shoes.delete("summer")

puts shoes.keys
puts shoes.values


hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }

# symbols are used with hashes most commonly

# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}
# 'Symbols' syntax - only works with symbols
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

puts american_cars[:ford]

