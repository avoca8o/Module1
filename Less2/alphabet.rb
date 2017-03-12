words = {}
x = 0

vowels = [:a, :e, :i, :o, :u, :y]

vowels.each do |letter|
  x += 1
  words[letter.to_sym] = x
end

puts words
