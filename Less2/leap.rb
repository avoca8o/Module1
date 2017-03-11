months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

print 'Year: '
year = gets.chomp.to_i

if year <= 0
  puts 'Год должен быть больше 1'
  exit
end

if (year % 400).zero? && (year % 4).zero?
  puts 'Високосный год!'
  months[1] = 29
else
  puts 'Не високосный год!'
end

print 'Month: '
month = gets.chomp.to_i

  unless month.between?(1, 12)
    puts 'Всего 12 месяцев в году!'
    exit
  end

print 'Day: '
day = gets.chomp.to_i

  unless day.between?(1, months[month - 1])
    puts 'Такого дня нет'
    exit
  end

i = 0
result = day

while i < month - 1
  result += months[i]
  i += 1
end

puts "Вы ввели дату: #{day}.#{month}.#{year}"

puts "Порядковый номер дня: #{result}"
