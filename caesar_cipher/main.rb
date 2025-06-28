def caesar_cipher(str,num)
  unless str.is_a?(String) && num.is_a?(Numeric)
    puts "Please enter valid arguments"
    return
  end
  res = ""
  str.each_byte do |char|
    c = 0
    if char >= 65 && char <= 90
      c = char - 65
      c = (c + num) % 26
      c += 65
    elsif char >= 97 && char <= 122
      c = char - 97
      c = (c + num) % 26
      c+= 97
    end
    res << c.chr
  end
  res
end

puts caesar_cipher("AAbCdef",5)