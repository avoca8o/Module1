months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

print 'Year: '
year = gets.chomp.to_i

if year <= 0
  puts 'Год должен быть больше 1'
  exit
end

if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
  months[1] = 29
  puts 'Високосный год!'
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
  puts 'Такого дня в этом месяце нет'
  exit
end

months = months[0..month-1]

result = 0

months.each.with_index(1) do |days, index|

  if month == index
    result += day
  else
    result += days
  end

end

puts "Вы ввели дату: #{day}.#{month}.#{year}"

puts "Порядковый номер дня: #{result}"
