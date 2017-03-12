words = {}
vowels = ['a', 'e', 'i', 'o', 'u', 'y']

('a' .. 'z').each.with_index(1) do |letter, index|
  words[letter] = index if vowels.include?(letter)
end

puts words
