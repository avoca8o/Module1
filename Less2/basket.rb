basket = {}

loop do
  print 'Введите название товара (stop для выхода): '
  name = gets.chomp.to_s

    break if name == 'stop' || name == 'стоп'

  print 'Введите цену товара: '
  price = gets.chomp.to_f

  print 'Введите количество товара: '
  quantity = gets.chomp.to_f

  basket[name.to_sym] = { price: price, quantity: quantity }
end

total = 0

basket.each do |x, y|
  puts "Товар: #{x}; Количество: #{y[:quantity]}; Цена: #{y[:price]}"
  sum = y[:quantity] * y[:price]
  puts "Сумма: #{sum}"
  total += sum
end

puts "Итоговая сумма всех покупок: #{total}"