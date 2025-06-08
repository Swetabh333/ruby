room_tidy = true

if room_tidy == true
  puts "I can play video games"
end

#falsy - nil and false
# 0 and "false" are also true
if 1 < 2
  puts "Hot diggity, 1 is less than 2"
end

# if there is only 1 line to be evaluated
#
puts "Hot diggity, 1 is less than 2" if  1 < 2

attack_by_land = true

if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true
  puts "release the shark"
else
  puts "release Kevin the octopus"
end

puts 5 == 5.0 #  true

puts 5.eql?(5.0) # false

# equal checks if pointing to the same obj in memory
#

a=6
b=6

puts a.equal?(b) # true

a="Hello"
b="Hello"

puts a.equal?(b) # false

#This happens because computers can’t store strings in the same efficient way they store numbers. Although the values of the variables are the same, the computer has created two separate string objects in memory.

puts 5 <=> 10    #=> -1
puts 10 <=> 10   #=> 0
puts 10 <=> 5    #=> 1

#logical operators

if 1 < 2 && 5 < 6
  puts "Party at Kevin's!"
end

# This can also be written as
if 1 < 2 and 5 < 6
  puts "Party at Kevin's!"
end

#case statement

grade = 'F'

did_i_pass = case grade
             when 'A' then "Hell yeah!"
             when 'D' then "Yea!"
             else "You shall not pass"
             end
puts did_i_pass
 
#unless 

age = 19
unless age < 18
  puts "Get a job."
end


#ternary

age = 19
response = age < 18 ? "You still have your entire life ahead of you." : "You're all grown up."
puts response #=> "You're all grown up."

  
end
