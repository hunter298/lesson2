list = {}

loop do
  puts 'Название товара:'
  item_name = gets.chomp.capitalize
  break if item_name == 'Стоп'
  puts 'Цена товара:'
  item_price = gets.chomp.to_f
  puts 'Количество товара:'
  item_amount = gets.chomp.to_i

  list[item_name] = {price: item_price, amount: item_amount}
end

puts '--------------------------------------------------------------'
puts "                        ЧЕК"

sum = 0
list.each do |product, list|
  puts "#{product} - #{list[:amount]} шт. по #{list[:price]}$ за штуку = #{list[:amount] * list[:price]}$"
  sum += (list[:amount] * list[:price])
end

puts '--------------------------------------------------------------'
puts "\nИтого: #{sum} USD"
puts 'Спасибо за покупку'