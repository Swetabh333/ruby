vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

puts vehicles[:alice][:year] #=> 2019

puts vehicles[:zoe][:year]
#=> NoMethodError

vehicles.dig(:zoe,:year) #=> nil 

# adding data 

vehicles[:dave] = {:year => 2021 , make: "Ford" , model: "Escape"}

puts vehicles[:dave]

vehicles[:dave][:color] = "red"

#deleting 

vehicles.delete(:blake)

# To delete an element in a nested hash
#

vehicles[:dave].delete(:color)

puts vehicles.select { |name,data| data[:year] >= 2020 }

# what if you only want the names 
#
vehicles.collect { |name,data| name if data[:year] >= 2020 }

#=> [nil, :caleb, :dave]

# To take care of the nil values
#
vehicles.collect { |name,data| name if data[:year] >= 2020 }.compact #=> [:caleb, :dave]

vehicles.filter_map { |name, data| name if data[:year] >= 2020 }
#=> [:caleb, :dave]
#combines the functionality of the two 


