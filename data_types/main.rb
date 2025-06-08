#Numbers

puts 1 + 1 
puts 1.+(1) 
puts 17/5 #integer

puts 17.0/5 #float

puts 13.0.to_i 
puts 15.to_f

puts 6.even?

puts 3.odd?

#strings

s1 = "Welcome " + "to " + "Odin!"
s2 = "Welcome " << "to " << "Odin!"
s3 = "Welcome ".concat("to ").concat("Odin!")

puts s1
puts s2
puts s3

puts "hello"[0]
puts "hello"[0..1]
puts "hello"[0...1]

puts "hello"[0,4]
puts "hello"[-1]

name= "Odin"
puts "hello #{name}"

puts "hello".capitalize

puts "hello".include?("el")
puts "hello".include?("z")

puts "hello".upcase
puts "Hello".downcase

puts "hello".empty?
puts "".empty?

puts "hello".length

puts "hello".reverse

puts "hello world".split

puts " hello, world   ".strip

puts "he77o".sub("7","l")

puts "he77o".gsub("7","l")

puts "hello".insert(-1,"dude")
puts "hello world".delete("l")

"!".prepend("hello"," world")

puts 5.to_s        #=> "5"

puts nil.to_s      #=> ""

puts :symbol.to_s  #=> "symbol"


puts "string" == "string"  #=> true
puts "string" == "string"  #=> true
puts "string".object_id == "string".object_id  #=> false
puts :symbol.object_id == :symbol.object_id    #=> true
puts "string".object_id == "string".object_id  #=> false
puts :symbol.object_id == :symbol.object_id    #=> true
