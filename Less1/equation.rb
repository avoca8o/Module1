print "Введите коэффициент (a): "
a = gets.strip.to_f

print "Введите коэффициент (b): "
b = gets.strip.to_f

print "Введите коэффициент (c): "
c = gets.strip.to_f

d = (b ** 2 - 4 * a * c)

x = -b/(2 * a)

md = Math.sqrt(d)

x1 = ((-b - md) / (2 * a))
x2 = ((-b + md) / (2 * a))

if d < 0
  puts "Дискриминант D = #{d}. Так как дискриминант меньше нуля, то уравнение не имеет действительных решений."
elsif d.zero?
  puts "Дискриминант D = #{d}. Один корень, X = #{x}"
elsif d > 0
  puts "Дискриминант D = #{d}. Два корня, X1 = #{x1}, X2 = #{x2}"
end


