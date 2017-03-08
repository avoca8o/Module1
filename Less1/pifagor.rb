print 'Введите сторону (a): '
a = gets.strip.to_f

print 'Введите сторону (b): '
b = gets.strip.to_f

print 'Введите сторону (c): '
c = gets.strip.to_f

# поиск гипотенузы

if a > b && a > c
  hypotenuse = a
  cathetus1 = b
  cathetus2 = c
elsif b > a && b > c
  hypotenuse = b
  cathetus1 = a
  cathetus2 = c
else
  hypotenuse = c
  cathetus1 = a
  cathetus2 = b
end

rectangular = cathetus1**2 + cathetus2**2 == hypotenuse**2            # прямоугольный
isosceles = a == b || a == c || c == b                                # равнобедренный
equilateral = a == b && b == c && c == a                              # равнобедренный и равносторонний

puts "Гипотенуза равна: #{hypotenuse}"

if equilateral
  puts 'Треугольник равнобедренный и равносторонний'
  abort
end

puts 'Треугольник равнобедренный' if isosceles

if rectangular
  puts 'Треугольник прямоугольный'
else
  puts 'Треугольник не прямоугольный'
end