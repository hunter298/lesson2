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
list.each do |key, value|
  puts "#{key} - #{value[:amount]} шт. по #{value[:price]}$ за штуку = #{value[:amount]*value[:price]}$"
  sum += (value[:amount]*value[:price])
end

puts '--------------------------------------------------------------'
puts "\nИтого: #{sum} USD"
puts 'Спасибо за покупку'