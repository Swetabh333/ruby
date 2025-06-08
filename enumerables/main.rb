friends = ["Sharon", "Leo", 'Leila', "Brian", "Arun"]
invited_list = []

for friend in friends do
  if friend != "Brian"
    invited_list.push(friend)
  end
end

puts invited_list #=> ["Sharon", "Leo", 'Leila',"Arun"]
