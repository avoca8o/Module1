basket = {}

loop do
  print 'Введите название товара (stop для выхода): '
  name = gets.chomp.to_s

break if name == 'stop' || name == 'стоп'
  print 'Введите цену товара: '
  price = gets.to_f

  print 'Введите количество товара: '
  quantity = gets.to_f

  basket[name.to_sym] = { price: price, quantity: quantity }
end

total = 0

basket.each do |name, item|
  puts "Товар: #{name}; Количество: #{item[:quantity]}; Цена: #{item[:price]}"
  sum = item[:quantity] * item[:price]
  puts "Сумма: #{sum}"
  total += sum
end

puts "Итоговая сумма всех покупок: #{total}"