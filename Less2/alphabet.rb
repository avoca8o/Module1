words = {}
x = 0

('A'..'Z').each do |letter|
  x += 1
  words[letter.to_sym] = x
end

puts words
