test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

puts teacher_mailboxes[0][0] #=> "Adams"

teacher_mailboxes[0][-1] #=> "Davis"

teacher_mailboxes[3][0] #=> NoMethodError


# use dig if you want nil instead of no method error

puts teacher_mailboxes.dig(3, 0) #=> nil 

# the second option in Array.new should be immutable otherwise confusing behaviour

mutable = Array.new(3,Array.new(2))

#=> [[nil, nil], [nil, nil], [nil, nil]]

mutable[0][0] = 1000

puts mutable

#=> [[1000, nil], [1000, nil], [1000, nil]]
# same happens with strings, hashes and other mutable objects

immutable = Array.new(3) { Array.new(2) }

#=> [[nil, nil], [nil, nil], [nil, nil]]
immutable[0][0] = 1000
#=> 1000
puts immutable
#=> [[1000, nil], [nil, nil], [nil, nil]]

test_scores << [100, 99, 98, 97]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[0].push(100)
#=> [97, 76, 79, 93, 100]
puts test_scores
#=> [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]

test_scores.pop
#=> [100, 99, 98, 97]
test_scores[0].pop
#=> 100
puts test_scores
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]

#Iteration

teacher_mailboxes.each_with_index do |row, row_index| 
  puts "Row #{row_index} = #{row}"
end

teacher_mailboxes.each_with_index do |row, row_index| 
  row.each_with_index do |column , column_index|
    puts "Row Number #{row_index} and Column number = #{column_index} = #{column}"
  end
end

#flatten

teacher_mailboxes.flatten.each do |teacher|
  puts "#{teacher} is a teacher"
end


# determine if a student scored >80 in all subjects

test_scores.any? do |scores|
  scores.all? { |score| score > 80 }
end

