words = {}
x = 0

vowels = ['a', 'e', 'i', 'o', 'u', 'y']

vowels.each.with_index(1) do |letter, index|
  words[letter] = index if vowels.include?(letter)
end

puts words
