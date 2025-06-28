vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

puts vehicles[:alice][:year] #=> 2019

#puts vehicles[:zoe][:year]
#=> NoMethodError

vehicles.dig(:zoe,:year) #=> nil 

# adding data 

vehicles[:dave] = {:year => 2021 , make: "Ford" , model: "Escape"}

puts vehicles[:dave]
