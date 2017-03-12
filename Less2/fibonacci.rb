fibonacci = [0, 1]

while (x = fibonacci[-2] + fibonacci[-1]) <= 100
  fibonacci << x
end

puts fibonacci
