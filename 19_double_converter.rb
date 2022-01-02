puts "Конвертор рублей в доллары и наоборот"
puts "\nВведите номер варианта
			1. Рубли в доллары
			2. Доллары в рубли
"
choice = gets.chomp

if choice == "1"
	puts "\nВведите курс $ на сегодня:"
	dollar = gets.chomp.to_f
	
	puts "Сумма в рублях для конвертации:"
	amount = gets.chomp.to_f

	result = (amount / dollar).round(2)

	puts "Ваши запасы: $" + result.to_s
else
	puts "\nВведите курс $ на сегодня:"
	dollar = gets.chomp.to_f
	
	puts "Сумма в $ для конвертации:"
	amount = gets.chomp.to_f

	result = (amount * dollar).round(2)

	puts "Ваши запасы: " + result.to_s + " руб."
end


