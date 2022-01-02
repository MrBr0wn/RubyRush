puts "Конвертор рублей в доллары"
puts "\nВведите курс $ на сегодня:"

dollar = gets.chomp.to_f

puts "Сумма в рублях для конвертации:"
amount = gets.chomp.to_f

result = (amount / dollar).round(2)

puts "Ваши запасы: $" + result.to_s