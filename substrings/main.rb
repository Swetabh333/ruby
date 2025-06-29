def substrings(str,dict)
  res = Hash.new(0)
  dict.each do |word|
    if str.include?(word)
      res[word] += 1
    end
  end
  res
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)