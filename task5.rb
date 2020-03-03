#Копипаст из первого упражнения
months = {
    january: 31,
    february: 28,
    march: 31,
    april: 30,
    may: 31,
    june: 30,
    july: 31,
    august: 31,
    september: 30,
    october: 31,
    november: 30,
    december: 31
}

puts 'Введите число'
date = gets.chomp.to_i

puts 'Введите месяц'
month = gets.chomp.to_i

puts 'Введите год'
year = gets.chomp.to_i

if year%400 == 0 || (year%4 == 0 && year%100 != 0)
  months[:february] = 29
end

total_days = 0

(1..(month-1)).each do |item|
  total_days += months.to_a[item][1]
end

puts "Сегодня #{total_days + date}й день этого года"
