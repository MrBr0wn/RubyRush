puts 'Вы решили прогуляться в Южном Бутово и наткнулись на спортивных ребят'
puts '1. Попытаться убежать'
puts '2. Продолжать идти'

choice = gets.chomp

if choice == '1'
	puts 'Ребята без труда догнали вас и побили. Не знаю, за что'
	exit
else
	puts 'Один из ребят вышел вперёд и спросил "Сиги есть?"'
	puts '1. Дать прикурить'
	puts '2. — Не курю'

	choice = gets.chomp

	if choice == '1'
		puts 'Прикурив, ребята отправились дальше'
		exit
	else
		puts 'Ребята расстроились и побили вас. Теперь уже ясно, за что'
		exit
	end
end