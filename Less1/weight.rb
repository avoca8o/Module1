print "Write your Name: "                             # программа предлагает ввести имя
name = gets.strip.capitalize                          # присваивем переменной name введеное имя

print "Write your Height: "                           # программа предлагает ввести рост
height = gets.strip.to_i                              # присваиваем переменной height введенный рост

n = 110                                               # присваиваем переменной n коэффициент-
ideal = height - n                                    # высчитываем идеальный вес по формуле "рост - 110"

if ideal < 0                                          # производим сравнение и выводим информацию пользователю
  puts "Your weight is optimal"
else
  puts "#{name}, your ideal weight is #{ideal}"
end