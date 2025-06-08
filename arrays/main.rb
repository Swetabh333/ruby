num_array = [1, 2]
str_array = ["This", "is", "a", "small", "array"]

Array.new #=> []

Array.new(3) #=>[nil,nil,nil]

Array.new(3,7) #=> [7,7,7]

Array.new(3,true)


str_array[0]            #=> "This"
str_array[1]            #=> "is"



str_array.first         #=> "This"
str_array.first(2)      #=> ["This", "is"]
str_array.last(2)       #=> ["small", "array"]

num_array.push(3,4)
num_array << 5
num_array.pop

puts num_array

num_array.unshift(0)
puts num_array.shift


a = [1, 2, 3]
b = [3, 4, 5]

puts a + b         #=> [1, 2, 3, 3, 4, 5]
puts a.concat(b)   #=> [1, 2, 3, 3, 4, 5]


puts [1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]

