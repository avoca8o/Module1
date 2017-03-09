fibonacci = []

x = 0
y = 1

loop do
  z = (x + y)
  x = y
  y = z
    until x < 100
      print fibonacci
      exit
    end
  fibonacci << x
end
